package com.easycredit.dao.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class CompanyInfoExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public CompanyInfoExample() {
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

        public Criteria andMortgagoridIsNull() {
            addCriterion("mortgagorid is null");
            return (Criteria) this;
        }

        public Criteria andMortgagoridIsNotNull() {
            addCriterion("mortgagorid is not null");
            return (Criteria) this;
        }

        public Criteria andMortgagoridEqualTo(Integer value) {
            addCriterion("mortgagorid =", value, "mortgagorid");
            return (Criteria) this;
        }

        public Criteria andMortgagoridNotEqualTo(Integer value) {
            addCriterion("mortgagorid <>", value, "mortgagorid");
            return (Criteria) this;
        }

        public Criteria andMortgagoridGreaterThan(Integer value) {
            addCriterion("mortgagorid >", value, "mortgagorid");
            return (Criteria) this;
        }

        public Criteria andMortgagoridGreaterThanOrEqualTo(Integer value) {
            addCriterion("mortgagorid >=", value, "mortgagorid");
            return (Criteria) this;
        }

        public Criteria andMortgagoridLessThan(Integer value) {
            addCriterion("mortgagorid <", value, "mortgagorid");
            return (Criteria) this;
        }

        public Criteria andMortgagoridLessThanOrEqualTo(Integer value) {
            addCriterion("mortgagorid <=", value, "mortgagorid");
            return (Criteria) this;
        }

        public Criteria andMortgagoridIn(List<Integer> values) {
            addCriterion("mortgagorid in", values, "mortgagorid");
            return (Criteria) this;
        }

        public Criteria andMortgagoridNotIn(List<Integer> values) {
            addCriterion("mortgagorid not in", values, "mortgagorid");
            return (Criteria) this;
        }

        public Criteria andMortgagoridBetween(Integer value1, Integer value2) {
            addCriterion("mortgagorid between", value1, value2, "mortgagorid");
            return (Criteria) this;
        }

        public Criteria andMortgagoridNotBetween(Integer value1, Integer value2) {
            addCriterion("mortgagorid not between", value1, value2, "mortgagorid");
            return (Criteria) this;
        }

        public Criteria andCompanynameIsNull() {
            addCriterion("companyname is null");
            return (Criteria) this;
        }

        public Criteria andCompanynameIsNotNull() {
            addCriterion("companyname is not null");
            return (Criteria) this;
        }

        public Criteria andCompanynameEqualTo(String value) {
            addCriterion("companyname =", value, "companyname");
            return (Criteria) this;
        }

        public Criteria andCompanynameNotEqualTo(String value) {
            addCriterion("companyname <>", value, "companyname");
            return (Criteria) this;
        }

        public Criteria andCompanynameGreaterThan(String value) {
            addCriterion("companyname >", value, "companyname");
            return (Criteria) this;
        }

        public Criteria andCompanynameGreaterThanOrEqualTo(String value) {
            addCriterion("companyname >=", value, "companyname");
            return (Criteria) this;
        }

        public Criteria andCompanynameLessThan(String value) {
            addCriterion("companyname <", value, "companyname");
            return (Criteria) this;
        }

        public Criteria andCompanynameLessThanOrEqualTo(String value) {
            addCriterion("companyname <=", value, "companyname");
            return (Criteria) this;
        }

        public Criteria andCompanynameLike(String value) {
            addCriterion("companyname like", value, "companyname");
            return (Criteria) this;
        }

        public Criteria andCompanynameNotLike(String value) {
            addCriterion("companyname not like", value, "companyname");
            return (Criteria) this;
        }

        public Criteria andCompanynameIn(List<String> values) {
            addCriterion("companyname in", values, "companyname");
            return (Criteria) this;
        }

        public Criteria andCompanynameNotIn(List<String> values) {
            addCriterion("companyname not in", values, "companyname");
            return (Criteria) this;
        }

        public Criteria andCompanynameBetween(String value1, String value2) {
            addCriterion("companyname between", value1, value2, "companyname");
            return (Criteria) this;
        }

        public Criteria andCompanynameNotBetween(String value1, String value2) {
            addCriterion("companyname not between", value1, value2, "companyname");
            return (Criteria) this;
        }

        public Criteria andDepartmentIsNull() {
            addCriterion("department is null");
            return (Criteria) this;
        }

        public Criteria andDepartmentIsNotNull() {
            addCriterion("department is not null");
            return (Criteria) this;
        }

        public Criteria andDepartmentEqualTo(String value) {
            addCriterion("department =", value, "department");
            return (Criteria) this;
        }

        public Criteria andDepartmentNotEqualTo(String value) {
            addCriterion("department <>", value, "department");
            return (Criteria) this;
        }

        public Criteria andDepartmentGreaterThan(String value) {
            addCriterion("department >", value, "department");
            return (Criteria) this;
        }

        public Criteria andDepartmentGreaterThanOrEqualTo(String value) {
            addCriterion("department >=", value, "department");
            return (Criteria) this;
        }

        public Criteria andDepartmentLessThan(String value) {
            addCriterion("department <", value, "department");
            return (Criteria) this;
        }

        public Criteria andDepartmentLessThanOrEqualTo(String value) {
            addCriterion("department <=", value, "department");
            return (Criteria) this;
        }

        public Criteria andDepartmentLike(String value) {
            addCriterion("department like", value, "department");
            return (Criteria) this;
        }

        public Criteria andDepartmentNotLike(String value) {
            addCriterion("department not like", value, "department");
            return (Criteria) this;
        }

        public Criteria andDepartmentIn(List<String> values) {
            addCriterion("department in", values, "department");
            return (Criteria) this;
        }

        public Criteria andDepartmentNotIn(List<String> values) {
            addCriterion("department not in", values, "department");
            return (Criteria) this;
        }

        public Criteria andDepartmentBetween(String value1, String value2) {
            addCriterion("department between", value1, value2, "department");
            return (Criteria) this;
        }

        public Criteria andDepartmentNotBetween(String value1, String value2) {
            addCriterion("department not between", value1, value2, "department");
            return (Criteria) this;
        }

        public Criteria andPositionIsNull() {
            addCriterion("position is null");
            return (Criteria) this;
        }

        public Criteria andPositionIsNotNull() {
            addCriterion("position is not null");
            return (Criteria) this;
        }

        public Criteria andPositionEqualTo(Integer value) {
            addCriterion("position =", value, "position");
            return (Criteria) this;
        }

        public Criteria andPositionNotEqualTo(Integer value) {
            addCriterion("position <>", value, "position");
            return (Criteria) this;
        }

        public Criteria andPositionGreaterThan(Integer value) {
            addCriterion("position >", value, "position");
            return (Criteria) this;
        }

        public Criteria andPositionGreaterThanOrEqualTo(Integer value) {
            addCriterion("position >=", value, "position");
            return (Criteria) this;
        }

        public Criteria andPositionLessThan(Integer value) {
            addCriterion("position <", value, "position");
            return (Criteria) this;
        }

        public Criteria andPositionLessThanOrEqualTo(Integer value) {
            addCriterion("position <=", value, "position");
            return (Criteria) this;
        }

        public Criteria andPositionIn(List<Integer> values) {
            addCriterion("position in", values, "position");
            return (Criteria) this;
        }

        public Criteria andPositionNotIn(List<Integer> values) {
            addCriterion("position not in", values, "position");
            return (Criteria) this;
        }

        public Criteria andPositionBetween(Integer value1, Integer value2) {
            addCriterion("position between", value1, value2, "position");
            return (Criteria) this;
        }

        public Criteria andPositionNotBetween(Integer value1, Integer value2) {
            addCriterion("position not between", value1, value2, "position");
            return (Criteria) this;
        }

        public Criteria andCompanytypeIsNull() {
            addCriterion("companytype is null");
            return (Criteria) this;
        }

        public Criteria andCompanytypeIsNotNull() {
            addCriterion("companytype is not null");
            return (Criteria) this;
        }

        public Criteria andCompanytypeEqualTo(Integer value) {
            addCriterion("companytype =", value, "companytype");
            return (Criteria) this;
        }

        public Criteria andCompanytypeNotEqualTo(Integer value) {
            addCriterion("companytype <>", value, "companytype");
            return (Criteria) this;
        }

        public Criteria andCompanytypeGreaterThan(Integer value) {
            addCriterion("companytype >", value, "companytype");
            return (Criteria) this;
        }

        public Criteria andCompanytypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("companytype >=", value, "companytype");
            return (Criteria) this;
        }

        public Criteria andCompanytypeLessThan(Integer value) {
            addCriterion("companytype <", value, "companytype");
            return (Criteria) this;
        }

        public Criteria andCompanytypeLessThanOrEqualTo(Integer value) {
            addCriterion("companytype <=", value, "companytype");
            return (Criteria) this;
        }

        public Criteria andCompanytypeIn(List<Integer> values) {
            addCriterion("companytype in", values, "companytype");
            return (Criteria) this;
        }

        public Criteria andCompanytypeNotIn(List<Integer> values) {
            addCriterion("companytype not in", values, "companytype");
            return (Criteria) this;
        }

        public Criteria andCompanytypeBetween(Integer value1, Integer value2) {
            addCriterion("companytype between", value1, value2, "companytype");
            return (Criteria) this;
        }

        public Criteria andCompanytypeNotBetween(Integer value1, Integer value2) {
            addCriterion("companytype not between", value1, value2, "companytype");
            return (Criteria) this;
        }

        public Criteria andPrimarybusinessIsNull() {
            addCriterion("primarybusiness is null");
            return (Criteria) this;
        }

        public Criteria andPrimarybusinessIsNotNull() {
            addCriterion("primarybusiness is not null");
            return (Criteria) this;
        }

        public Criteria andPrimarybusinessEqualTo(String value) {
            addCriterion("primarybusiness =", value, "primarybusiness");
            return (Criteria) this;
        }

        public Criteria andPrimarybusinessNotEqualTo(String value) {
            addCriterion("primarybusiness <>", value, "primarybusiness");
            return (Criteria) this;
        }

        public Criteria andPrimarybusinessGreaterThan(String value) {
            addCriterion("primarybusiness >", value, "primarybusiness");
            return (Criteria) this;
        }

        public Criteria andPrimarybusinessGreaterThanOrEqualTo(String value) {
            addCriterion("primarybusiness >=", value, "primarybusiness");
            return (Criteria) this;
        }

        public Criteria andPrimarybusinessLessThan(String value) {
            addCriterion("primarybusiness <", value, "primarybusiness");
            return (Criteria) this;
        }

        public Criteria andPrimarybusinessLessThanOrEqualTo(String value) {
            addCriterion("primarybusiness <=", value, "primarybusiness");
            return (Criteria) this;
        }

        public Criteria andPrimarybusinessLike(String value) {
            addCriterion("primarybusiness like", value, "primarybusiness");
            return (Criteria) this;
        }

        public Criteria andPrimarybusinessNotLike(String value) {
            addCriterion("primarybusiness not like", value, "primarybusiness");
            return (Criteria) this;
        }

        public Criteria andPrimarybusinessIn(List<String> values) {
            addCriterion("primarybusiness in", values, "primarybusiness");
            return (Criteria) this;
        }

        public Criteria andPrimarybusinessNotIn(List<String> values) {
            addCriterion("primarybusiness not in", values, "primarybusiness");
            return (Criteria) this;
        }

        public Criteria andPrimarybusinessBetween(String value1, String value2) {
            addCriterion("primarybusiness between", value1, value2, "primarybusiness");
            return (Criteria) this;
        }

        public Criteria andPrimarybusinessNotBetween(String value1, String value2) {
            addCriterion("primarybusiness not between", value1, value2, "primarybusiness");
            return (Criteria) this;
        }

        public Criteria andLicencenoIsNull() {
            addCriterion("licenceno is null");
            return (Criteria) this;
        }

        public Criteria andLicencenoIsNotNull() {
            addCriterion("licenceno is not null");
            return (Criteria) this;
        }

        public Criteria andLicencenoEqualTo(String value) {
            addCriterion("licenceno =", value, "licenceno");
            return (Criteria) this;
        }

        public Criteria andLicencenoNotEqualTo(String value) {
            addCriterion("licenceno <>", value, "licenceno");
            return (Criteria) this;
        }

        public Criteria andLicencenoGreaterThan(String value) {
            addCriterion("licenceno >", value, "licenceno");
            return (Criteria) this;
        }

        public Criteria andLicencenoGreaterThanOrEqualTo(String value) {
            addCriterion("licenceno >=", value, "licenceno");
            return (Criteria) this;
        }

        public Criteria andLicencenoLessThan(String value) {
            addCriterion("licenceno <", value, "licenceno");
            return (Criteria) this;
        }

        public Criteria andLicencenoLessThanOrEqualTo(String value) {
            addCriterion("licenceno <=", value, "licenceno");
            return (Criteria) this;
        }

        public Criteria andLicencenoLike(String value) {
            addCriterion("licenceno like", value, "licenceno");
            return (Criteria) this;
        }

        public Criteria andLicencenoNotLike(String value) {
            addCriterion("licenceno not like", value, "licenceno");
            return (Criteria) this;
        }

        public Criteria andLicencenoIn(List<String> values) {
            addCriterion("licenceno in", values, "licenceno");
            return (Criteria) this;
        }

        public Criteria andLicencenoNotIn(List<String> values) {
            addCriterion("licenceno not in", values, "licenceno");
            return (Criteria) this;
        }

        public Criteria andLicencenoBetween(String value1, String value2) {
            addCriterion("licenceno between", value1, value2, "licenceno");
            return (Criteria) this;
        }

        public Criteria andLicencenoNotBetween(String value1, String value2) {
            addCriterion("licenceno not between", value1, value2, "licenceno");
            return (Criteria) this;
        }

        public Criteria andRegisterdateIsNull() {
            addCriterion("registerdate is null");
            return (Criteria) this;
        }

        public Criteria andRegisterdateIsNotNull() {
            addCriterion("registerdate is not null");
            return (Criteria) this;
        }

        public Criteria andRegisterdateEqualTo(Date value) {
            addCriterion("registerdate =", value, "registerdate");
            return (Criteria) this;
        }

        public Criteria andRegisterdateNotEqualTo(Date value) {
            addCriterion("registerdate <>", value, "registerdate");
            return (Criteria) this;
        }

        public Criteria andRegisterdateGreaterThan(Date value) {
            addCriterion("registerdate >", value, "registerdate");
            return (Criteria) this;
        }

        public Criteria andRegisterdateGreaterThanOrEqualTo(Date value) {
            addCriterion("registerdate >=", value, "registerdate");
            return (Criteria) this;
        }

        public Criteria andRegisterdateLessThan(Date value) {
            addCriterion("registerdate <", value, "registerdate");
            return (Criteria) this;
        }

        public Criteria andRegisterdateLessThanOrEqualTo(Date value) {
            addCriterion("registerdate <=", value, "registerdate");
            return (Criteria) this;
        }

        public Criteria andRegisterdateIn(List<Date> values) {
            addCriterion("registerdate in", values, "registerdate");
            return (Criteria) this;
        }

        public Criteria andRegisterdateNotIn(List<Date> values) {
            addCriterion("registerdate not in", values, "registerdate");
            return (Criteria) this;
        }

        public Criteria andRegisterdateBetween(Date value1, Date value2) {
            addCriterion("registerdate between", value1, value2, "registerdate");
            return (Criteria) this;
        }

        public Criteria andRegisterdateNotBetween(Date value1, Date value2) {
            addCriterion("registerdate not between", value1, value2, "registerdate");
            return (Criteria) this;
        }

        public Criteria andLimittypeIsNull() {
            addCriterion("limittype is null");
            return (Criteria) this;
        }

        public Criteria andLimittypeIsNotNull() {
            addCriterion("limittype is not null");
            return (Criteria) this;
        }

        public Criteria andLimittypeEqualTo(Integer value) {
            addCriterion("limittype =", value, "limittype");
            return (Criteria) this;
        }

        public Criteria andLimittypeNotEqualTo(Integer value) {
            addCriterion("limittype <>", value, "limittype");
            return (Criteria) this;
        }

        public Criteria andLimittypeGreaterThan(Integer value) {
            addCriterion("limittype >", value, "limittype");
            return (Criteria) this;
        }

        public Criteria andLimittypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("limittype >=", value, "limittype");
            return (Criteria) this;
        }

        public Criteria andLimittypeLessThan(Integer value) {
            addCriterion("limittype <", value, "limittype");
            return (Criteria) this;
        }

        public Criteria andLimittypeLessThanOrEqualTo(Integer value) {
            addCriterion("limittype <=", value, "limittype");
            return (Criteria) this;
        }

        public Criteria andLimittypeIn(List<Integer> values) {
            addCriterion("limittype in", values, "limittype");
            return (Criteria) this;
        }

        public Criteria andLimittypeNotIn(List<Integer> values) {
            addCriterion("limittype not in", values, "limittype");
            return (Criteria) this;
        }

        public Criteria andLimittypeBetween(Integer value1, Integer value2) {
            addCriterion("limittype between", value1, value2, "limittype");
            return (Criteria) this;
        }

        public Criteria andLimittypeNotBetween(Integer value1, Integer value2) {
            addCriterion("limittype not between", value1, value2, "limittype");
            return (Criteria) this;
        }

        public Criteria andLimitdateIsNull() {
            addCriterion("limitdate is null");
            return (Criteria) this;
        }

        public Criteria andLimitdateIsNotNull() {
            addCriterion("limitdate is not null");
            return (Criteria) this;
        }

        public Criteria andLimitdateEqualTo(Date value) {
            addCriterion("limitdate =", value, "limitdate");
            return (Criteria) this;
        }

        public Criteria andLimitdateNotEqualTo(Date value) {
            addCriterion("limitdate <>", value, "limitdate");
            return (Criteria) this;
        }

        public Criteria andLimitdateGreaterThan(Date value) {
            addCriterion("limitdate >", value, "limitdate");
            return (Criteria) this;
        }

        public Criteria andLimitdateGreaterThanOrEqualTo(Date value) {
            addCriterion("limitdate >=", value, "limitdate");
            return (Criteria) this;
        }

        public Criteria andLimitdateLessThan(Date value) {
            addCriterion("limitdate <", value, "limitdate");
            return (Criteria) this;
        }

        public Criteria andLimitdateLessThanOrEqualTo(Date value) {
            addCriterion("limitdate <=", value, "limitdate");
            return (Criteria) this;
        }

        public Criteria andLimitdateIn(List<Date> values) {
            addCriterion("limitdate in", values, "limitdate");
            return (Criteria) this;
        }

        public Criteria andLimitdateNotIn(List<Date> values) {
            addCriterion("limitdate not in", values, "limitdate");
            return (Criteria) this;
        }

        public Criteria andLimitdateBetween(Date value1, Date value2) {
            addCriterion("limitdate between", value1, value2, "limitdate");
            return (Criteria) this;
        }

        public Criteria andLimitdateNotBetween(Date value1, Date value2) {
            addCriterion("limitdate not between", value1, value2, "limitdate");
            return (Criteria) this;
        }

        public Criteria andRegisteredcapitalIsNull() {
            addCriterion("registeredcapital is null");
            return (Criteria) this;
        }

        public Criteria andRegisteredcapitalIsNotNull() {
            addCriterion("registeredcapital is not null");
            return (Criteria) this;
        }

        public Criteria andRegisteredcapitalEqualTo(Double value) {
            addCriterion("registeredcapital =", value, "registeredcapital");
            return (Criteria) this;
        }

        public Criteria andRegisteredcapitalNotEqualTo(Double value) {
            addCriterion("registeredcapital <>", value, "registeredcapital");
            return (Criteria) this;
        }

        public Criteria andRegisteredcapitalGreaterThan(Double value) {
            addCriterion("registeredcapital >", value, "registeredcapital");
            return (Criteria) this;
        }

        public Criteria andRegisteredcapitalGreaterThanOrEqualTo(Double value) {
            addCriterion("registeredcapital >=", value, "registeredcapital");
            return (Criteria) this;
        }

        public Criteria andRegisteredcapitalLessThan(Double value) {
            addCriterion("registeredcapital <", value, "registeredcapital");
            return (Criteria) this;
        }

        public Criteria andRegisteredcapitalLessThanOrEqualTo(Double value) {
            addCriterion("registeredcapital <=", value, "registeredcapital");
            return (Criteria) this;
        }

        public Criteria andRegisteredcapitalIn(List<Double> values) {
            addCriterion("registeredcapital in", values, "registeredcapital");
            return (Criteria) this;
        }

        public Criteria andRegisteredcapitalNotIn(List<Double> values) {
            addCriterion("registeredcapital not in", values, "registeredcapital");
            return (Criteria) this;
        }

        public Criteria andRegisteredcapitalBetween(Double value1, Double value2) {
            addCriterion("registeredcapital between", value1, value2, "registeredcapital");
            return (Criteria) this;
        }

        public Criteria andRegisteredcapitalNotBetween(Double value1, Double value2) {
            addCriterion("registeredcapital not between", value1, value2, "registeredcapital");
            return (Criteria) this;
        }

        public Criteria andAreaidIsNull() {
            addCriterion("areaid is null");
            return (Criteria) this;
        }

        public Criteria andAreaidIsNotNull() {
            addCriterion("areaid is not null");
            return (Criteria) this;
        }

        public Criteria andAreaidEqualTo(Integer value) {
            addCriterion("areaid =", value, "areaid");
            return (Criteria) this;
        }

        public Criteria andAreaidNotEqualTo(Integer value) {
            addCriterion("areaid <>", value, "areaid");
            return (Criteria) this;
        }

        public Criteria andAreaidGreaterThan(Integer value) {
            addCriterion("areaid >", value, "areaid");
            return (Criteria) this;
        }

        public Criteria andAreaidGreaterThanOrEqualTo(Integer value) {
            addCriterion("areaid >=", value, "areaid");
            return (Criteria) this;
        }

        public Criteria andAreaidLessThan(Integer value) {
            addCriterion("areaid <", value, "areaid");
            return (Criteria) this;
        }

        public Criteria andAreaidLessThanOrEqualTo(Integer value) {
            addCriterion("areaid <=", value, "areaid");
            return (Criteria) this;
        }

        public Criteria andAreaidIn(List<Integer> values) {
            addCriterion("areaid in", values, "areaid");
            return (Criteria) this;
        }

        public Criteria andAreaidNotIn(List<Integer> values) {
            addCriterion("areaid not in", values, "areaid");
            return (Criteria) this;
        }

        public Criteria andAreaidBetween(Integer value1, Integer value2) {
            addCriterion("areaid between", value1, value2, "areaid");
            return (Criteria) this;
        }

        public Criteria andAreaidNotBetween(Integer value1, Integer value2) {
            addCriterion("areaid not between", value1, value2, "areaid");
            return (Criteria) this;
        }

        public Criteria andDetailaddressIsNull() {
            addCriterion("detailaddress is null");
            return (Criteria) this;
        }

        public Criteria andDetailaddressIsNotNull() {
            addCriterion("detailaddress is not null");
            return (Criteria) this;
        }

        public Criteria andDetailaddressEqualTo(String value) {
            addCriterion("detailaddress =", value, "detailaddress");
            return (Criteria) this;
        }

        public Criteria andDetailaddressNotEqualTo(String value) {
            addCriterion("detailaddress <>", value, "detailaddress");
            return (Criteria) this;
        }

        public Criteria andDetailaddressGreaterThan(String value) {
            addCriterion("detailaddress >", value, "detailaddress");
            return (Criteria) this;
        }

        public Criteria andDetailaddressGreaterThanOrEqualTo(String value) {
            addCriterion("detailaddress >=", value, "detailaddress");
            return (Criteria) this;
        }

        public Criteria andDetailaddressLessThan(String value) {
            addCriterion("detailaddress <", value, "detailaddress");
            return (Criteria) this;
        }

        public Criteria andDetailaddressLessThanOrEqualTo(String value) {
            addCriterion("detailaddress <=", value, "detailaddress");
            return (Criteria) this;
        }

        public Criteria andDetailaddressLike(String value) {
            addCriterion("detailaddress like", value, "detailaddress");
            return (Criteria) this;
        }

        public Criteria andDetailaddressNotLike(String value) {
            addCriterion("detailaddress not like", value, "detailaddress");
            return (Criteria) this;
        }

        public Criteria andDetailaddressIn(List<String> values) {
            addCriterion("detailaddress in", values, "detailaddress");
            return (Criteria) this;
        }

        public Criteria andDetailaddressNotIn(List<String> values) {
            addCriterion("detailaddress not in", values, "detailaddress");
            return (Criteria) this;
        }

        public Criteria andDetailaddressBetween(String value1, String value2) {
            addCriterion("detailaddress between", value1, value2, "detailaddress");
            return (Criteria) this;
        }

        public Criteria andDetailaddressNotBetween(String value1, String value2) {
            addCriterion("detailaddress not between", value1, value2, "detailaddress");
            return (Criteria) this;
        }

        public Criteria andEntrydateIsNull() {
            addCriterion("entrydate is null");
            return (Criteria) this;
        }

        public Criteria andEntrydateIsNotNull() {
            addCriterion("entrydate is not null");
            return (Criteria) this;
        }

        public Criteria andEntrydateEqualTo(Integer value) {
            addCriterion("entrydate =", value, "entrydate");
            return (Criteria) this;
        }

        public Criteria andEntrydateNotEqualTo(Integer value) {
            addCriterion("entrydate <>", value, "entrydate");
            return (Criteria) this;
        }

        public Criteria andEntrydateGreaterThan(Integer value) {
            addCriterion("entrydate >", value, "entrydate");
            return (Criteria) this;
        }

        public Criteria andEntrydateGreaterThanOrEqualTo(Integer value) {
            addCriterion("entrydate >=", value, "entrydate");
            return (Criteria) this;
        }

        public Criteria andEntrydateLessThan(Integer value) {
            addCriterion("entrydate <", value, "entrydate");
            return (Criteria) this;
        }

        public Criteria andEntrydateLessThanOrEqualTo(Integer value) {
            addCriterion("entrydate <=", value, "entrydate");
            return (Criteria) this;
        }

        public Criteria andEntrydateIn(List<Integer> values) {
            addCriterion("entrydate in", values, "entrydate");
            return (Criteria) this;
        }

        public Criteria andEntrydateNotIn(List<Integer> values) {
            addCriterion("entrydate not in", values, "entrydate");
            return (Criteria) this;
        }

        public Criteria andEntrydateBetween(Integer value1, Integer value2) {
            addCriterion("entrydate between", value1, value2, "entrydate");
            return (Criteria) this;
        }

        public Criteria andEntrydateNotBetween(Integer value1, Integer value2) {
            addCriterion("entrydate not between", value1, value2, "entrydate");
            return (Criteria) this;
        }

        public Criteria andIncomeperyearIsNull() {
            addCriterion("incomeperyear is null");
            return (Criteria) this;
        }

        public Criteria andIncomeperyearIsNotNull() {
            addCriterion("incomeperyear is not null");
            return (Criteria) this;
        }

        public Criteria andIncomeperyearEqualTo(Double value) {
            addCriterion("incomeperyear =", value, "incomeperyear");
            return (Criteria) this;
        }

        public Criteria andIncomeperyearNotEqualTo(Double value) {
            addCriterion("incomeperyear <>", value, "incomeperyear");
            return (Criteria) this;
        }

        public Criteria andIncomeperyearGreaterThan(Double value) {
            addCriterion("incomeperyear >", value, "incomeperyear");
            return (Criteria) this;
        }

        public Criteria andIncomeperyearGreaterThanOrEqualTo(Double value) {
            addCriterion("incomeperyear >=", value, "incomeperyear");
            return (Criteria) this;
        }

        public Criteria andIncomeperyearLessThan(Double value) {
            addCriterion("incomeperyear <", value, "incomeperyear");
            return (Criteria) this;
        }

        public Criteria andIncomeperyearLessThanOrEqualTo(Double value) {
            addCriterion("incomeperyear <=", value, "incomeperyear");
            return (Criteria) this;
        }

        public Criteria andIncomeperyearIn(List<Double> values) {
            addCriterion("incomeperyear in", values, "incomeperyear");
            return (Criteria) this;
        }

        public Criteria andIncomeperyearNotIn(List<Double> values) {
            addCriterion("incomeperyear not in", values, "incomeperyear");
            return (Criteria) this;
        }

        public Criteria andIncomeperyearBetween(Double value1, Double value2) {
            addCriterion("incomeperyear between", value1, value2, "incomeperyear");
            return (Criteria) this;
        }

        public Criteria andIncomeperyearNotBetween(Double value1, Double value2) {
            addCriterion("incomeperyear not between", value1, value2, "incomeperyear");
            return (Criteria) this;
        }

        public Criteria andIncomepermonthIsNull() {
            addCriterion("incomepermonth is null");
            return (Criteria) this;
        }

        public Criteria andIncomepermonthIsNotNull() {
            addCriterion("incomepermonth is not null");
            return (Criteria) this;
        }

        public Criteria andIncomepermonthEqualTo(Double value) {
            addCriterion("incomepermonth =", value, "incomepermonth");
            return (Criteria) this;
        }

        public Criteria andIncomepermonthNotEqualTo(Double value) {
            addCriterion("incomepermonth <>", value, "incomepermonth");
            return (Criteria) this;
        }

        public Criteria andIncomepermonthGreaterThan(Double value) {
            addCriterion("incomepermonth >", value, "incomepermonth");
            return (Criteria) this;
        }

        public Criteria andIncomepermonthGreaterThanOrEqualTo(Double value) {
            addCriterion("incomepermonth >=", value, "incomepermonth");
            return (Criteria) this;
        }

        public Criteria andIncomepermonthLessThan(Double value) {
            addCriterion("incomepermonth <", value, "incomepermonth");
            return (Criteria) this;
        }

        public Criteria andIncomepermonthLessThanOrEqualTo(Double value) {
            addCriterion("incomepermonth <=", value, "incomepermonth");
            return (Criteria) this;
        }

        public Criteria andIncomepermonthIn(List<Double> values) {
            addCriterion("incomepermonth in", values, "incomepermonth");
            return (Criteria) this;
        }

        public Criteria andIncomepermonthNotIn(List<Double> values) {
            addCriterion("incomepermonth not in", values, "incomepermonth");
            return (Criteria) this;
        }

        public Criteria andIncomepermonthBetween(Double value1, Double value2) {
            addCriterion("incomepermonth between", value1, value2, "incomepermonth");
            return (Criteria) this;
        }

        public Criteria andIncomepermonthNotBetween(Double value1, Double value2) {
            addCriterion("incomepermonth not between", value1, value2, "incomepermonth");
            return (Criteria) this;
        }

        public Criteria andOtherincomepermonthIsNull() {
            addCriterion("otherincomepermonth is null");
            return (Criteria) this;
        }

        public Criteria andOtherincomepermonthIsNotNull() {
            addCriterion("otherincomepermonth is not null");
            return (Criteria) this;
        }

        public Criteria andOtherincomepermonthEqualTo(Double value) {
            addCriterion("otherincomepermonth =", value, "otherincomepermonth");
            return (Criteria) this;
        }

        public Criteria andOtherincomepermonthNotEqualTo(Double value) {
            addCriterion("otherincomepermonth <>", value, "otherincomepermonth");
            return (Criteria) this;
        }

        public Criteria andOtherincomepermonthGreaterThan(Double value) {
            addCriterion("otherincomepermonth >", value, "otherincomepermonth");
            return (Criteria) this;
        }

        public Criteria andOtherincomepermonthGreaterThanOrEqualTo(Double value) {
            addCriterion("otherincomepermonth >=", value, "otherincomepermonth");
            return (Criteria) this;
        }

        public Criteria andOtherincomepermonthLessThan(Double value) {
            addCriterion("otherincomepermonth <", value, "otherincomepermonth");
            return (Criteria) this;
        }

        public Criteria andOtherincomepermonthLessThanOrEqualTo(Double value) {
            addCriterion("otherincomepermonth <=", value, "otherincomepermonth");
            return (Criteria) this;
        }

        public Criteria andOtherincomepermonthIn(List<Double> values) {
            addCriterion("otherincomepermonth in", values, "otherincomepermonth");
            return (Criteria) this;
        }

        public Criteria andOtherincomepermonthNotIn(List<Double> values) {
            addCriterion("otherincomepermonth not in", values, "otherincomepermonth");
            return (Criteria) this;
        }

        public Criteria andOtherincomepermonthBetween(Double value1, Double value2) {
            addCriterion("otherincomepermonth between", value1, value2, "otherincomepermonth");
            return (Criteria) this;
        }

        public Criteria andOtherincomepermonthNotBetween(Double value1, Double value2) {
            addCriterion("otherincomepermonth not between", value1, value2, "otherincomepermonth");
            return (Criteria) this;
        }

        public Criteria andOtherincomeresourseIsNull() {
            addCriterion("otherincomeresourse is null");
            return (Criteria) this;
        }

        public Criteria andOtherincomeresourseIsNotNull() {
            addCriterion("otherincomeresourse is not null");
            return (Criteria) this;
        }

        public Criteria andOtherincomeresourseEqualTo(String value) {
            addCriterion("otherincomeresourse =", value, "otherincomeresourse");
            return (Criteria) this;
        }

        public Criteria andOtherincomeresourseNotEqualTo(String value) {
            addCriterion("otherincomeresourse <>", value, "otherincomeresourse");
            return (Criteria) this;
        }

        public Criteria andOtherincomeresourseGreaterThan(String value) {
            addCriterion("otherincomeresourse >", value, "otherincomeresourse");
            return (Criteria) this;
        }

        public Criteria andOtherincomeresourseGreaterThanOrEqualTo(String value) {
            addCriterion("otherincomeresourse >=", value, "otherincomeresourse");
            return (Criteria) this;
        }

        public Criteria andOtherincomeresourseLessThan(String value) {
            addCriterion("otherincomeresourse <", value, "otherincomeresourse");
            return (Criteria) this;
        }

        public Criteria andOtherincomeresourseLessThanOrEqualTo(String value) {
            addCriterion("otherincomeresourse <=", value, "otherincomeresourse");
            return (Criteria) this;
        }

        public Criteria andOtherincomeresourseLike(String value) {
            addCriterion("otherincomeresourse like", value, "otherincomeresourse");
            return (Criteria) this;
        }

        public Criteria andOtherincomeresourseNotLike(String value) {
            addCriterion("otherincomeresourse not like", value, "otherincomeresourse");
            return (Criteria) this;
        }

        public Criteria andOtherincomeresourseIn(List<String> values) {
            addCriterion("otherincomeresourse in", values, "otherincomeresourse");
            return (Criteria) this;
        }

        public Criteria andOtherincomeresourseNotIn(List<String> values) {
            addCriterion("otherincomeresourse not in", values, "otherincomeresourse");
            return (Criteria) this;
        }

        public Criteria andOtherincomeresourseBetween(String value1, String value2) {
            addCriterion("otherincomeresourse between", value1, value2, "otherincomeresourse");
            return (Criteria) this;
        }

        public Criteria andOtherincomeresourseNotBetween(String value1, String value2) {
            addCriterion("otherincomeresourse not between", value1, value2, "otherincomeresourse");
            return (Criteria) this;
        }

        public Criteria andSupportnumIsNull() {
            addCriterion("supportnum is null");
            return (Criteria) this;
        }

        public Criteria andSupportnumIsNotNull() {
            addCriterion("supportnum is not null");
            return (Criteria) this;
        }

        public Criteria andSupportnumEqualTo(Integer value) {
            addCriterion("supportnum =", value, "supportnum");
            return (Criteria) this;
        }

        public Criteria andSupportnumNotEqualTo(Integer value) {
            addCriterion("supportnum <>", value, "supportnum");
            return (Criteria) this;
        }

        public Criteria andSupportnumGreaterThan(Integer value) {
            addCriterion("supportnum >", value, "supportnum");
            return (Criteria) this;
        }

        public Criteria andSupportnumGreaterThanOrEqualTo(Integer value) {
            addCriterion("supportnum >=", value, "supportnum");
            return (Criteria) this;
        }

        public Criteria andSupportnumLessThan(Integer value) {
            addCriterion("supportnum <", value, "supportnum");
            return (Criteria) this;
        }

        public Criteria andSupportnumLessThanOrEqualTo(Integer value) {
            addCriterion("supportnum <=", value, "supportnum");
            return (Criteria) this;
        }

        public Criteria andSupportnumIn(List<Integer> values) {
            addCriterion("supportnum in", values, "supportnum");
            return (Criteria) this;
        }

        public Criteria andSupportnumNotIn(List<Integer> values) {
            addCriterion("supportnum not in", values, "supportnum");
            return (Criteria) this;
        }

        public Criteria andSupportnumBetween(Integer value1, Integer value2) {
            addCriterion("supportnum between", value1, value2, "supportnum");
            return (Criteria) this;
        }

        public Criteria andSupportnumNotBetween(Integer value1, Integer value2) {
            addCriterion("supportnum not between", value1, value2, "supportnum");
            return (Criteria) this;
        }

        public Criteria andCompanynameLikeInsensitive(String value) {
            addCriterion("upper(companyname) like", value.toUpperCase(), "companyname");
            return (Criteria) this;
        }

        public Criteria andDepartmentLikeInsensitive(String value) {
            addCriterion("upper(department) like", value.toUpperCase(), "department");
            return (Criteria) this;
        }

        public Criteria andPrimarybusinessLikeInsensitive(String value) {
            addCriterion("upper(primarybusiness) like", value.toUpperCase(), "primarybusiness");
            return (Criteria) this;
        }

        public Criteria andLicencenoLikeInsensitive(String value) {
            addCriterion("upper(licenceno) like", value.toUpperCase(), "licenceno");
            return (Criteria) this;
        }

        public Criteria andDetailaddressLikeInsensitive(String value) {
            addCriterion("upper(detailaddress) like", value.toUpperCase(), "detailaddress");
            return (Criteria) this;
        }

        public Criteria andOtherincomeresourseLikeInsensitive(String value) {
            addCriterion("upper(otherincomeresourse) like", value.toUpperCase(), "otherincomeresourse");
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