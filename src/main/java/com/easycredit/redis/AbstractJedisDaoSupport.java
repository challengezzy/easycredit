package com.easycredit.redis;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Qualifier;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPubSub;
import redis.clients.jedis.Pipeline;
import redis.clients.jedis.Response;
import redis.clients.jedis.exceptions.JedisException;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;

public abstract class AbstractJedisDaoSupport {

	protected static Logger logger = Logger.getLogger(AbstractJedisDaoSupport.class);

	protected static final Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();

	@Qualifier("redispool")
	@Resource
	protected JedisPool jedisPool;

	protected abstract int getDBIndex();

	protected Jedis getJedis() throws JedisException {
		Jedis jedis = null;
		try {
			jedis = jedisPool.getResource();
		} catch (JedisException e) {
			logger.warn("failed:jedisPool getResource.", e);
			e.printStackTrace();
			throw e;
		}
		return jedis;
	}

	protected <T extends Object> void addObjectToRedis(String key, T t, int cacheSeconds) {
		String json = gson.toJson(t);
		this.addStringToJedis(key, json, cacheSeconds);
	}

	protected <T extends Object> T getObjectFromRedis(String key) {
		String json = this.getStringFromJedis(key);
		return gson.fromJson(json, new TypeToken<T>() {
		}.getType());
	}

	protected void release(Jedis jedis, boolean isBroken) {
		if (jedis != null) {
			if (isBroken) {
				jedisPool.returnBrokenResource(jedis);
			} else {
				jedisPool.returnResource(jedis);
			}
		}
	}

	protected String addStringToJedis(String key, String value, int cacheSeconds) {
		Jedis jedis = null;
		boolean isBroken = false;
		String lastVal = null;
		try {
			jedis = this.getJedis();
			jedis.select(getDBIndex());
			lastVal = jedis.getSet(key, value);
			if (cacheSeconds != 0) {
				jedis.expire(key, cacheSeconds);
			}
		} catch (JedisException e) {
			isBroken = true;
			logger.warn("failed:addStringToJedis(" + key + "," + value + ")", e);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			release(jedis, isBroken);
		}
		return lastVal;
	}

	protected void addStringToJedis(Map<String, String> batchData, int cacheSeconds) {
		Jedis jedis = null;
		boolean isBroken = false;
		try {
			jedis = this.getJedis();
			jedis.select(getDBIndex());
			Pipeline pipeline = jedis.pipelined();
			for (Map.Entry<String, String> element : batchData.entrySet()) {
				if (cacheSeconds != 0) {
					pipeline.setex(element.getKey(), cacheSeconds, element.getValue());
				} else {
					pipeline.set(element.getKey(), element.getValue());
				}
			}
			pipeline.sync();
		} catch (JedisException e) {
			isBroken = true;
			logger.warn("failed:addStringToJedis, data size is " + batchData.size(), e);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			release(jedis, isBroken);
		}
	}

	protected <T extends Object> void addListToJedis2(String key, List<T> list, int cacheSeconds) {
		List<String> lists = new ArrayList<String>();
		for (T r : list) {
			lists.add(gson.toJson(r));
		}
		this.addListToJedis(key, lists, cacheSeconds);
	}

	protected void addListToJedis(String key, List<String> list, int cacheSeconds) {
		if (list != null && list.size() > 0) {
			Jedis jedis = null;
			boolean isBroken = false;
			try {
				jedis = this.getJedis();
				jedis.select(getDBIndex());
				if (jedis.exists(key)) {
					jedis.del(key);
				}
				for (String aList : list) {
					jedis.rpush(key, aList);
				}
				if (cacheSeconds != 0) {
					jedis.expire(key, cacheSeconds);
				}
			} catch (JedisException e) {
				isBroken = true;
				logger.warn("failed:addListToJedis, data size is " + list.size(), e);
			} finally {
				release(jedis, isBroken);
			}
		}
	}

	protected void addToSetJedis(String key, String[] value) {
		Jedis jedis = null;
		boolean isBroken = false;
		try {
			jedis = this.getJedis();
			jedis.select(getDBIndex());
			jedis.sadd(key, value);
		} catch (JedisException e) {
			isBroken = true;
			logger.warn("failed:addToSetJedis(" + key + "," + value + ")", e);
		} finally {
			release(jedis, isBroken);
		}
	}

	protected void removeSetJedis(String key, String value) {
		Jedis jedis = null;
		boolean isBroken = false;
		try {
			jedis = this.getJedis();
			jedis.select(getDBIndex());
			jedis.srem(key, value);
		} catch (JedisException e) {
			isBroken = true;
			logger.warn("failed:removeSetJedis(" + key + "," + value + ")", e);
		} finally {
			release(jedis, isBroken);
		}
	}

	protected void lpushDataToListJedis(String key, String data, int cacheSeconds) {
		Jedis jedis = null;
		boolean isBroken = false;
		try {
			jedis = this.getJedis();
			jedis.select(getDBIndex());
			jedis.lpush(key, data);
			if (cacheSeconds != 0) {
				jedis.expire(key, cacheSeconds);
			}
		} catch (JedisException e) {
			isBroken = true;
			logger.warn("failed:pushDataToListJedis(" + key + "," + data + ")", e);
		} finally {
			release(jedis, isBroken);
		}
	}

	/**
	 * 从队列的右边入队一个元素
	 * 
	 * @param key
	 * @param data
	 * @param cacheSeconds
	 */
	protected void rpushDataToListJedis(String key, String data, int cacheSeconds) {
		Jedis jedis = null;
		boolean isBroken = false;
		try {
			jedis = this.getJedis();
			jedis.select(getDBIndex());
			jedis.rpush(key, data);
			if (cacheSeconds != 0) {
				jedis.expire(key, cacheSeconds);
			}
		} catch (JedisException e) {
			isBroken = true;
			logger.warn("failed:pushDataToListJedis(" + key + "," + data + ")", e);
		} finally {
			release(jedis, isBroken);
		}
	}

	/**
	 * 从队列的左边入队一个或多个元素
	 * 
	 * @param key
	 * @param batchData
	 * @param cacheSeconds
	 */
	protected void lpushDataToListJedis(String key, List<String> batchData, int cacheSeconds) {
		Jedis jedis = null;
		boolean isBroken = false;
		try {
			jedis = this.getJedis();
			jedis.select(getDBIndex());
			jedis.lpush(key, batchData.toArray(new String[batchData.size()]));
			if (cacheSeconds != 0)
				jedis.expire(key, cacheSeconds);
		} catch (JedisException e) {
			isBroken = true;
			logger.warn("failed:pushDataToListJedis(" + key + ",[" + (batchData != null ? batchData.size() : 0) + "])",
					e);
		} catch (Exception e) {
			isBroken = true;
			logger.warn("failed:pushDataToListJedis(" + key + ",[" + (batchData != null ? batchData.size() : 0) + "])",
					e);
		} finally {
			release(jedis, isBroken);
		}
	}

	/**
	 * 从队列的右边入队一个或多个元素
	 * 
	 * @param key
	 * @param batchData
	 * @param cacheSeconds
	 */
	protected void rpushDataToListJedis(String key, List<String> batchData, int cacheSeconds) {
		Jedis jedis = null;
		boolean isBroken = false;
		try {
			jedis = this.getJedis();
			jedis.select(getDBIndex());
			jedis.rpush(key, batchData.toArray(new String[batchData.size()]));
			if (cacheSeconds != 0)
				jedis.expire(key, cacheSeconds);
		} catch (JedisException e) {
			isBroken = true;
			logger.warn("failed:pushDataToListJedis(" + key + ",[" + (batchData != null ? batchData.size() : 0) + "])",
					e);
		} catch (Exception e) {
			isBroken = true;
			logger.warn("failed:pushDataToListJedis(" + key + ",[" + (batchData != null ? batchData.size() : 0) + "])",
					e);
		} finally {
			release(jedis, isBroken);
		}
	}

	/**
	 * 从队列的左边删除元素，并返回删除的元素
	 * 
	 * @param key
	 * @param count
	 * @return
	 */
	protected List<String> lpopAndDelJedis(String key, int count) {
		Jedis jedis = null;
		boolean isBroken = false;
		try {
			jedis = this.getJedis();
			jedis.select(getDBIndex());
			if (jedis.exists(key)) {
				List<String> result = new ArrayList<String>();
				List<Response<String>> responses = new ArrayList<Response<String>>();
				Pipeline pipeline = jedis.pipelined();
				int index = 0;
				while (index < count) {
					responses.add(pipeline.lpop(key));
					index++;
				}
				pipeline.sync();
				for (Response<String> response : responses) {
					if (response != null) {
						result.add(response.get());
					}
				}
				responses.clear();
				responses = null;
				return result;
			}
		} catch (JedisException e) {
			isBroken = true;
			logger.warn("failed:pushDataToListJedis(" + key + "," + count + ")", e);
		} catch (Exception e) {
			isBroken = true;
			logger.warn("failed:pushDataToListJedis(" + key + "," + count + ")", e);
		} finally {
			release(jedis, isBroken);
		}
		return null;
	}

	/**
	 * 从队列的右边删除元素，并返回删除的元素
	 * 
	 * @param key
	 * @param count
	 * @return
	 */
	protected List<String> rpopAndDelJedis(String key, int count) throws Exception {
		Jedis jedis = null;
		boolean isBroken = false;
		try {
			jedis = this.getJedis();
			jedis.select(getDBIndex());
			if (jedis.exists(key)) {
				Long queueLen = jedis.llen(key);
				queueLen = queueLen == null ? 0l : queueLen;
				int maxLen = Math.max(queueLen.intValue(), count);
				maxLen = Math.max(maxLen, 1);
				List<String> result = new ArrayList<String>();
				Pipeline pipeline = jedis.pipelined();
				int index = 0;
				while (index < maxLen) {
					pipeline.rpop(key);
					index++;
				}
				List<Object> responses = pipeline.syncAndReturnAll();
				for (Object response : responses) {
					if (response != null) {
						result.add(response.toString());
					}
				}
				responses.clear();
				responses = null;
				// 删除null元素
				result.removeAll(Collections.singleton(null));
				return result;
			}
		} catch (JedisException e) {
			isBroken = true;
			logger.warn("failed:rpopAndDelJedis(" + key + "," + count + ")", e);
			throw e;
		} catch (Exception e) {
			isBroken = true;
			logger.warn("failed:rpopAndDelJedis(" + key + "," + count + ")", e);
			throw e;
		} finally {
			release(jedis, isBroken);
		}
		return null;
	}

	/**
	 * 从队列的右边删除元素，并返回删除的元素
	 * 
	 * @param key
	 * @param timeout
	 * @return
	 */
	protected String bRpopAndDelJedis(String key, int timeout) throws Exception {
		Jedis jedis = null;
		boolean isBroken = false;
		try {
			jedis = this.getJedis();
			jedis.select(getDBIndex());
			if (jedis.exists(key)) {
				List<String> rsArr = jedis.brpop(timeout, key);
				if (rsArr != null && !rsArr.isEmpty()) {
					return rsArr.get(0);
				}
			}
		} catch (JedisException e) {
			isBroken = true;
			logger.warn("failed:bRpopAndDelJedis(" + key + "," + timeout + ")", e);
			throw e;
		} catch (Exception e) {
			isBroken = true;
			logger.warn("failed:bRpopAndDelJedis(" + key + "," + timeout + ")", e);
			throw e;
		} finally {
			release(jedis, isBroken);
		}
		return null;
	}

	/**
	 * 删除list中的元素
	 * 
	 * @param key
	 * @param values
	 * 
	 */
	protected void deleteDataFromListJedis(String key, List<String> values) {
		Jedis jedis = null;
		boolean isBroken = false;
		try {
			jedis = this.getJedis();
			jedis.select(getDBIndex());
			Pipeline pipeline = jedis.pipelined();
			if (values != null && !values.isEmpty()) {
				for (String val : values) {
					pipeline.lrem(key, 0, val);
				}
			}
			pipeline.sync();
		} catch (JedisException e) {
			isBroken = true;
			logger.warn("failed:deleteDataFromListJedis(" + key + ",[" + (values != null ? values.size() : 0) + "])", e);
		} catch (Exception e) {
			isBroken = true;
			logger.warn("failed:deleteDataFromListJedis(" + key + ",[" + (values != null ? values.size() : 0) + "])", e);
		} finally {
			release(jedis, isBroken);
		}
	}

	protected void addHashMapToJedis(String key, Map<String, String> map, int cacheSeconds, boolean isModified) {
		boolean isBroken = false;
		Jedis jedis = null;
		if (map != null && map.size() > 0) {
			try {
				jedis = this.getJedis();
				jedis.select(getDBIndex());
				jedis.hmset(key, map);
				if (cacheSeconds >= 0)
					jedis.expire(key, cacheSeconds);
			} catch (JedisException e) {
				isBroken = true;
				logger.warn("failed:addHashMapToJedis(" + key + ",{" + (map != null ? map.size() : 0) + "})", e);
			} finally {
				release(jedis, isBroken);
			}
		}
	}

	protected void inrcMapValueToJedis(String key, String field, long value) {
		boolean isBroken = false;
		Jedis jedis = null;
		try {
			jedis = this.getJedis();
			jedis.select(this.getDBIndex());
			jedis.hincrBy(key, field, value);
		} catch (Exception e) {
			isBroken = true;
			logger.warn("failed:inrcMapValueToJedis(" + key + field + ")", e);
		} finally {
			release(jedis, isBroken);
		}
	}

	protected void addHashMapToJedis(String key, String field, String value, int cacheSeconds) {
		boolean isBroken = false;
		Jedis jedis = null;
		try {
			jedis = this.getJedis();
			if (jedis != null) {
				jedis.select(getDBIndex());
				jedis.hset(key, field, value);
				if (cacheSeconds >= 0) {
					jedis.expire(key, cacheSeconds);
				}
			}
		} catch (JedisException e) {
			isBroken = true;
			logger.warn("failed:addHashMapToJedis(" + key + "," + field + "," + value + ")", e);
		} finally {
			release(jedis, isBroken);
		}
	}

	protected void delHashMapKeyFromJedis(String key, String... fields) {
		boolean isBroken = false;
		Jedis jedis = null;
		try {
			jedis = this.getJedis();
			if (jedis != null) {
				jedis.select(getDBIndex());
				jedis.hdel(key, fields);
			}
		} catch (JedisException e) {
			isBroken = true;
			logger.warn("failed:addHashMapToJedis(" + key + "," + StringUtils.join(fields, ",") + ")", e);
		} finally {
			release(jedis, isBroken);
		}
	}

	protected void updateHashMapToJedis(String key, String incrementField, long incrementValue, String dateField,
			String dateValue) {
		boolean isBroken = false;
		Jedis jedis = null;
		try {
			jedis = this.getJedis();
			jedis.select(getDBIndex());
			jedis.hincrBy(key, incrementField, incrementValue);
			jedis.hset(key, dateField, dateValue);
		} catch (JedisException e) {
			isBroken = true;
			logger.warn("failed:updateHashMapToJedis(" + key + "," + incrementField + "," + incrementValue + ")", e);
		} finally {
			release(jedis, isBroken);
		}
	}

	public String getStringFromJedis(String key) {
		String value = null;
		Jedis jedis = null;
		boolean isBroken = false;
		try {
			jedis = this.getJedis();
			jedis.select(getDBIndex());
			if (jedis.exists(key)) {
				value = jedis.get(key);
				value = StringUtils.isNotBlank(value) && !"nil".equalsIgnoreCase(value) ? value : null;
			}
		} catch (JedisException e) {
			isBroken = true;
			logger.warn("failed:getStringFromJedis(" + key + "," + value + ")", e);
		} finally {
			release(jedis, isBroken);
		}
		return value;
	}

	public List<String> getStringFromJedis(String[] keys) {
		Jedis jedis = null;
		boolean isBroken = false;
		try {
			jedis = this.getJedis();
			jedis.select(getDBIndex());
			return jedis.mget(keys);
		} catch (JedisException e) {
			isBroken = true;
			logger.warn("failed:getStringFromJedis(" + Arrays.toString(keys) + ")", e);
		} finally {
			release(jedis, isBroken);
		}
		return null;
	}

	protected <T> List<T> getListFromJedis2(String key) {
		List<String> rs = this.getListFromJedis(key);
		List<T> rows = new ArrayList<T>();
		for (String r : rs) {
			T row = gson.fromJson(r, new TypeToken<T>() {
			}.getType());
			rows.add(row);
		}
		return rows;
	}

	protected List<String> getListFromJedis(String key) throws JedisException {
		List<String> list = null;
		boolean isBroken = false;
		Jedis jedis = null;
		try {
			jedis = this.getJedis();
			jedis.select(getDBIndex());
			if (jedis.exists(key)) {
				list = jedis.lrange(key, 0, -1);
			}
		} catch (JedisException e) {
			isBroken = true;
			logger.warn("failed:getListFromJedis(" + key + ")", e);
			throw e;
		} finally {
			release(jedis, isBroken);
		}
		return list;
	}

	protected Long countListSizeJedis(String key) throws JedisException {
		Long len = 0l;
		boolean isBroken = false;
		Jedis jedis = null;
		try {
			jedis = this.getJedis();
			jedis.select(getDBIndex());
			if (jedis.exists(key)) {
				len = jedis.llen(key);
			}
		} catch (JedisException e) {
			isBroken = true;
			logger.warn("failed:countListSizeJedis(" + key + ")", e);
			throw e;
		} finally {
			release(jedis, isBroken);
		}
		return len == null ? 0l : len;
	}

	protected Set<String> getSetFromJedis(String key) throws JedisException {
		Set<String> list = null;
		boolean isBroken = false;
		Jedis jedis = null;
		try {
			jedis = this.getJedis();
			jedis.select(getDBIndex());
			if (jedis.exists(key)) {
				list = jedis.smembers(key);
			}
		} catch (JedisException e) {
			isBroken = true;
			logger.warn("failed:getSetFromJedis(" + key + ")", e);
		} finally {
			release(jedis, isBroken);
		}
		return list;
	}

	protected Map<String, String> getHashMapFromJedis(String key) {
		Map<String, String> hashMap = null;
		boolean isBroken = false;
		Jedis jedis = null;
		try {
			jedis = this.getJedis();
			jedis.select(getDBIndex());
			hashMap = jedis.hgetAll(key);
		} catch (Exception e) {
			isBroken = true;
			logger.warn("failed:getHashMapFromJedis(" + key + ")", e);
		} finally {
			release(jedis, isBroken);
		}
		return hashMap;
	}

	protected String getHashMapValueFromJedis(String key, String field) {
		String value = null;
		boolean isBroken = false;
		Jedis jedis = null;
		try {
			jedis = this.getJedis();
			if (jedis != null) {
				jedis.select(getDBIndex());
				if (jedis.exists(key)) {
					value = jedis.hget(key, field);
				}
			}
		} catch (JedisException e) {
			isBroken = true;
			logger.warn("failed:getHashMapValueFromJedis(" + key + "," + field + ")", e);
		} finally {
			release(jedis, isBroken);
		}
		return value;
	}

	public Long getIdentifyId(String identifyName) {
		boolean isBroken = false;
		Jedis jedis = null;
		Long identify = null;
		try {
			jedis = this.getJedis();
			if (jedis != null) {
				jedis.select(getDBIndex());
				identify = jedis.incr(identifyName);
				if (identify == 0) {
					return jedis.incr(identifyName);
				} else {
					return identify;
				}
			}
		} catch (JedisException e) {
			isBroken = true;
			logger.warn("failed:getIdentifyId(" + identifyName + ")", e);
		} finally {
			release(jedis, isBroken);
		}
		return null;
	}

	/**
	 * 删除某db的某个key值
	 * 
	 * @param key
	 * @return
	 */
	public Long delKeyFromJedis(String key) {
		boolean isBroken = false;
		Jedis jedis = null;
		long result = 0;
		try {
			jedis = this.getJedis();
			jedis.select(getDBIndex());
			return jedis.del(key);
		} catch (Exception e) {
			isBroken = true;
			logger.warn("failed:delKeyFromJedis(" + key + ")", e);
		} finally {
			release(jedis, isBroken);
		}
		return result;
	}

	/**
	 * 根据dbIndex flushDB每个shard
	 * 
	 * @param dbIndex
	 */
	public void flushDBFromJedis(int dbIndex) {
		Jedis jedis = null;
		boolean isBroken = false;
		try {
			jedis = this.getJedis();
			jedis.select(dbIndex);
			jedis.flushDB();
		} catch (Exception e) {
			isBroken = true;
			logger.warn("failed:flushDBFromJedis(" + dbIndex + ")", e);
		} finally {
			release(jedis, isBroken);
		}
	}

	public boolean existKey(String key) {
		Jedis jedis = null;
		boolean isBroken = false;
		try {
			jedis = this.getJedis();
			jedis.select(getDBIndex());
			return jedis.exists(key);
		} catch (Exception e) {
			isBroken = true;
			logger.warn("failed:existKey(" + key + ")", e);
		} finally {
			release(jedis, isBroken);
		}
		return false;
	}

	public boolean existMapField(String key, String field) {
		Jedis jedis = null;
		boolean isBroken = false;
		try {
			jedis = this.getJedis();
			jedis.select(getDBIndex());
			return jedis.hexists(key, field);
		} catch (Exception e) {
			isBroken = true;
			logger.warn("failed:existMapField(" + key + ")", e);
		} finally {
			release(jedis, isBroken);
		}
		return false;
	}

	public void subscribe(JedisPubSub jedisPubSub, String... key) {
		Jedis jedis = null;
		boolean isBroken = false;
		try {
			jedis = this.getJedis();
			jedis.select(getDBIndex());
			jedis.subscribe(jedisPubSub, key);
		} catch (Exception e) {
			isBroken = true;
			logger.warn("failed:existKey(" + key + ")", e);
		} finally {
			release(jedis, isBroken);
		}
	}

	public void psubscribe(JedisPubSub jedisPubSub, String... key) {
		Jedis jedis = null;
		boolean isBroken = false;
		try {
			jedis = this.getJedis();
			jedis.select(getDBIndex());
			jedis.psubscribe(jedisPubSub, key);
		} catch (Exception e) {
			isBroken = true;
			logger.warn("failed:existKey(" + key + ")", e);
		} finally {
			release(jedis, isBroken);
		}
	}

	public long publish(String channel, String msg) {
		Jedis jedis = null;
		boolean isBroken = false;
		try {
			jedis = this.getJedis();
			jedis.select(getDBIndex());
			return jedis.publish(channel, msg);
		} catch (Exception e) {
			isBroken = true;
			logger.warn("failed:publish(" + channel + "," + msg + ")", e);
		} finally {
			release(jedis, isBroken);
		}
		return 0l;
	}

}
