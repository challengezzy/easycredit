package com.easycredit.dao.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ProductEvidenceExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ProductEvidenceExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andProductidIsNull() {
            addCriterion("productid is null");
            return (Criteria) this;
        }

        public Criteria andProductidIsNotNull() {
            addCriterion("productid is not null");
            return (Criteria) this;
        }

        public Criteria andProductidEqualTo(Integer value) {
            addCriterion("productid =", value, "productid");
            return (Criteria) this;
        }

        public Criteria andProductidNotEqualTo(Integer value) {
            addCriterion("productid <>", value, "productid");
            return (Criteria) this;
        }

        public Criteria andProductidGreaterThan(Integer value) {
            addCriterion("productid >", value, "productid");
            return (Criteria) this;
        }

        public Criteria andProductidGreaterThanOrEqualTo(Integer value) {
            addCriterion("productid >=", value, "productid");
            return (Criteria) this;
        }

        public Criteria andProductidLessThan(Integer value) {
            addCriterion("productid <", value, "productid");
            return (Criteria) this;
        }

        public Criteria andProductidLessThanOrEqualTo(Integer value) {
            addCriterion("productid <=", value, "productid");
            return (Criteria) this;
        }

        public Criteria andProductidIn(List<Integer> values) {
            addCriterion("productid in", values, "productid");
            return (Criteria) this;
        }

        public Criteria andProductidNotIn(List<Integer> values) {
            addCriterion("productid not in", values, "productid");
            return (Criteria) this;
        }

        public Criteria andProductidBetween(Integer value1, Integer value2) {
            addCriterion("productid between", value1, value2, "productid");
            return (Criteria) this;
        }

        public Criteria andProductidNotBetween(Integer value1, Integer value2) {
            addCriterion("productid not between", value1, value2, "productid");
            return (Criteria) this;
        }

        public Criteria andEvidenceurlIsNull() {
            addCriterion("evidenceurl is null");
            return (Criteria) this;
        }

        public Criteria andEvidenceurlIsNotNull() {
            addCriterion("evidenceurl is not null");
            return (Criteria) this;
        }

        public Criteria andEvidenceurlEqualTo(String value) {
            addCriterion("evidenceurl =", value, "evidenceurl");
            return (Criteria) this;
        }

        public Criteria andEvidenceurlNotEqualTo(String value) {
            addCriterion("evidenceurl <>", value, "evidenceurl");
            return (Criteria) this;
        }

        public Criteria andEvidenceurlGreaterThan(String value) {
            addCriterion("evidenceurl >", value, "evidenceurl");
            return (Criteria) this;
        }

        public Criteria andEvidenceurlGreaterThanOrEqualTo(String value) {
            addCriterion("evidenceurl >=", value, "evidenceurl");
            return (Criteria) this;
        }

        public Criteria andEvidenceurlLessThan(String value) {
            addCriterion("evidenceurl <", value, "evidenceurl");
            return (Criteria) this;
        }

        public Criteria andEvidenceurlLessThanOrEqualTo(String value) {
            addCriterion("evidenceurl <=", value, "evidenceurl");
            return (Criteria) this;
        }

        public Criteria andEvidenceurlLike(String value) {
            addCriterion("evidenceurl like", value, "evidenceurl");
            return (Criteria) this;
        }

        public Criteria andEvidenceurlNotLike(String value) {
            addCriterion("evidenceurl not like", value, "evidenceurl");
            return (Criteria) this;
        }

        public Criteria andEvidenceurlIn(List<String> values) {
            addCriterion("evidenceurl in", values, "evidenceurl");
            return (Criteria) this;
        }

        public Criteria andEvidenceurlNotIn(List<String> values) {
            addCriterion("evidenceurl not in", values, "evidenceurl");
            return (Criteria) this;
        }

        public Criteria andEvidenceurlBetween(String value1, String value2) {
            addCriterion("evidenceurl between", value1, value2, "evidenceurl");
            return (Criteria) this;
        }

        public Criteria andEvidenceurlNotBetween(String value1, String value2) {
            addCriterion("evidenceurl not between", value1, value2, "evidenceurl");
            return (Criteria) this;
        }

        public Criteria andEvidencedescribeIsNull() {
            addCriterion("evidencedescribe is null");
            return (Criteria) this;
        }

        public Criteria andEvidencedescribeIsNotNull() {
            addCriterion("evidencedescribe is not null");
            return (Criteria) this;
        }

        public Criteria andEvidencedescribeEqualTo(String value) {
            addCriterion("evidencedescribe =", value, "evidencedescribe");
            return (Criteria) this;
        }

        public Criteria andEvidencedescribeNotEqualTo(String value) {
            addCriterion("evidencedescribe <>", value, "evidencedescribe");
            return (Criteria) this;
        }

        public Criteria andEvidencedescribeGreaterThan(String value) {
            addCriterion("evidencedescribe >", value, "evidencedescribe");
            return (Criteria) this;
        }

        public Criteria andEvidencedescribeGreaterThanOrEqualTo(String value) {
            addCriterion("evidencedescribe >=", value, "evidencedescribe");
            return (Criteria) this;
        }

        public Criteria andEvidencedescribeLessThan(String value) {
            addCriterion("evidencedescribe <", value, "evidencedescribe");
            return (Criteria) this;
        }

        public Criteria andEvidencedescribeLessThanOrEqualTo(String value) {
            addCriterion("evidencedescribe <=", value, "evidencedescribe");
            return (Criteria) this;
        }

        public Criteria andEvidencedescribeLike(String value) {
            addCriterion("evidencedescribe like", value, "evidencedescribe");
            return (Criteria) this;
        }

        public Criteria andEvidencedescribeNotLike(String value) {
            addCriterion("evidencedescribe not like", value, "evidencedescribe");
            return (Criteria) this;
        }

        public Criteria andEvidencedescribeIn(List<String> values) {
            addCriterion("evidencedescribe in", values, "evidencedescribe");
            return (Criteria) this;
        }

        public Criteria andEvidencedescribeNotIn(List<String> values) {
            addCriterion("evidencedescribe not in", values, "evidencedescribe");
            return (Criteria) this;
        }

        public Criteria andEvidencedescribeBetween(String value1, String value2) {
            addCriterion("evidencedescribe between", value1, value2, "evidencedescribe");
            return (Criteria) this;
        }

        public Criteria andEvidencedescribeNotBetween(String value1, String value2) {
            addCriterion("evidencedescribe not between", value1, value2, "evidencedescribe");
            return (Criteria) this;
        }

        public Criteria andOperatoridIsNull() {
            addCriterion("operatorid is null");
            return (Criteria) this;
        }

        public Criteria andOperatoridIsNotNull() {
            addCriterion("operatorid is not null");
            return (Criteria) this;
        }

        public Criteria andOperatoridEqualTo(Integer value) {
            addCriterion("operatorid =", value, "operatorid");
            return (Criteria) this;
        }

        public Criteria andOperatoridNotEqualTo(Integer value) {
            addCriterion("operatorid <>", value, "operatorid");
            return (Criteria) this;
        }

        public Criteria andOperatoridGreaterThan(Integer value) {
            addCriterion("operatorid >", value, "operatorid");
            return (Criteria) this;
        }

        public Criteria andOperatoridGreaterThanOrEqualTo(Integer value) {
            addCriterion("operatorid >=", value, "operatorid");
            return (Criteria) this;
        }

        public Criteria andOperatoridLessThan(Integer value) {
            addCriterion("operatorid <", value, "operatorid");
            return (Criteria) this;
        }

        public Criteria andOperatoridLessThanOrEqualTo(Integer value) {
            addCriterion("operatorid <=", value, "operatorid");
            return (Criteria) this;
        }

        public Criteria andOperatoridIn(List<Integer> values) {
            addCriterion("operatorid in", values, "operatorid");
            return (Criteria) this;
        }

        public Criteria andOperatoridNotIn(List<Integer> values) {
            addCriterion("operatorid not in", values, "operatorid");
            return (Criteria) this;
        }

        public Criteria andOperatoridBetween(Integer value1, Integer value2) {
            addCriterion("operatorid between", value1, value2, "operatorid");
            return (Criteria) this;
        }

        public Criteria andOperatoridNotBetween(Integer value1, Integer value2) {
            addCriterion("operatorid not between", value1, value2, "operatorid");
            return (Criteria) this;
        }

        public Criteria andCreatedateIsNull() {
            addCriterion("createdate is null");
            return (Criteria) this;
        }

        public Criteria andCreatedateIsNotNull() {
            addCriterion("createdate is not null");
            return (Criteria) this;
        }

        public Criteria andCreatedateEqualTo(Date value) {
            addCriterion("createdate =", value, "createdate");
            return (Criteria) this;
        }

        public Criteria andCreatedateNotEqualTo(Date value) {
            addCriterion("createdate <>", value, "createdate");
            return (Criteria) this;
        }

        public Criteria andCreatedateGreaterThan(Date value) {
            addCriterion("createdate >", value, "createdate");
            return (Criteria) this;
        }

        public Criteria andCreatedateGreaterThanOrEqualTo(Date value) {
            addCriterion("createdate >=", value, "createdate");
            return (Criteria) this;
        }

        public Criteria andCreatedateLessThan(Date value) {
            addCriterion("createdate <", value, "createdate");
            return (Criteria) this;
        }

        public Criteria andCreatedateLessThanOrEqualTo(Date value) {
            addCriterion("createdate <=", value, "createdate");
            return (Criteria) this;
        }

        public Criteria andCreatedateIn(List<Date> values) {
            addCriterion("createdate in", values, "createdate");
            return (Criteria) this;
        }

        public Criteria andCreatedateNotIn(List<Date> values) {
            addCriterion("createdate not in", values, "createdate");
            return (Criteria) this;
        }

        public Criteria andCreatedateBetween(Date value1, Date value2) {
            addCriterion("createdate between", value1, value2, "createdate");
            return (Criteria) this;
        }

        public Criteria andCreatedateNotBetween(Date value1, Date value2) {
            addCriterion("createdate not between", value1, value2, "createdate");
            return (Criteria) this;
        }

        public Criteria andDisplayorderIsNull() {
            addCriterion("displayorder is null");
            return (Criteria) this;
        }

        public Criteria andDisplayorderIsNotNull() {
            addCriterion("displayorder is not null");
            return (Criteria) this;
        }

        public Criteria andDisplayorderEqualTo(Boolean value) {
            addCriterion("displayorder =", value, "displayorder");
            return (Criteria) this;
        }

        public Criteria andDisplayorderNotEqualTo(Boolean value) {
            addCriterion("displayorder <>", value, "displayorder");
            return (Criteria) this;
        }

        public Criteria andDisplayorderGreaterThan(Boolean value) {
            addCriterion("displayorder >", value, "displayorder");
            return (Criteria) this;
        }

        public Criteria andDisplayorderGreaterThanOrEqualTo(Boolean value) {
            addCriterion("displayorder >=", value, "displayorder");
            return (Criteria) this;
        }

        public Criteria andDisplayorderLessThan(Boolean value) {
            addCriterion("displayorder <", value, "displayorder");
            return (Criteria) this;
        }

        public Criteria andDisplayorderLessThanOrEqualTo(Boolean value) {
            addCriterion("displayorder <=", value, "displayorder");
            return (Criteria) this;
        }

        public Criteria andDisplayorderIn(List<Boolean> values) {
            addCriterion("displayorder in", values, "displayorder");
            return (Criteria) this;
        }

        public Criteria andDisplayorderNotIn(List<Boolean> values) {
            addCriterion("displayorder not in", values, "displayorder");
            return (Criteria) this;
        }

        public Criteria andDisplayorderBetween(Boolean value1, Boolean value2) {
            addCriterion("displayorder between", value1, value2, "displayorder");
            return (Criteria) this;
        }

        public Criteria andDisplayorderNotBetween(Boolean value1, Boolean value2) {
            addCriterion("displayorder not between", value1, value2, "displayorder");
            return (Criteria) this;
        }

        public Criteria andEvidenceurlLikeInsensitive(String value) {
            addCriterion("upper(evidenceurl) like", value.toUpperCase(), "evidenceurl");
            return (Criteria) this;
        }

        public Criteria andEvidencedescribeLikeInsensitive(String value) {
            addCriterion("upper(evidencedescribe) like", value.toUpperCase(), "evidencedescribe");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}