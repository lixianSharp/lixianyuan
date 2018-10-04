package lixianyuan.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ReplyExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ReplyExample() {
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

        public Criteria andReplyidIsNull() {
            addCriterion("replyid is null");
            return (Criteria) this;
        }

        public Criteria andReplyidIsNotNull() {
            addCriterion("replyid is not null");
            return (Criteria) this;
        }

        public Criteria andReplyidEqualTo(String value) {
            addCriterion("replyid =", value, "replyid");
            return (Criteria) this;
        }

        public Criteria andReplyidNotEqualTo(String value) {
            addCriterion("replyid <>", value, "replyid");
            return (Criteria) this;
        }

        public Criteria andReplyidGreaterThan(String value) {
            addCriterion("replyid >", value, "replyid");
            return (Criteria) this;
        }

        public Criteria andReplyidGreaterThanOrEqualTo(String value) {
            addCriterion("replyid >=", value, "replyid");
            return (Criteria) this;
        }

        public Criteria andReplyidLessThan(String value) {
            addCriterion("replyid <", value, "replyid");
            return (Criteria) this;
        }

        public Criteria andReplyidLessThanOrEqualTo(String value) {
            addCriterion("replyid <=", value, "replyid");
            return (Criteria) this;
        }

        public Criteria andReplyidLike(String value) {
            addCriterion("replyid like", value, "replyid");
            return (Criteria) this;
        }

        public Criteria andReplyidNotLike(String value) {
            addCriterion("replyid not like", value, "replyid");
            return (Criteria) this;
        }

        public Criteria andReplyidIn(List<String> values) {
            addCriterion("replyid in", values, "replyid");
            return (Criteria) this;
        }

        public Criteria andReplyidNotIn(List<String> values) {
            addCriterion("replyid not in", values, "replyid");
            return (Criteria) this;
        }

        public Criteria andReplyidBetween(String value1, String value2) {
            addCriterion("replyid between", value1, value2, "replyid");
            return (Criteria) this;
        }

        public Criteria andReplyidNotBetween(String value1, String value2) {
            addCriterion("replyid not between", value1, value2, "replyid");
            return (Criteria) this;
        }

        public Criteria andReplynameIsNull() {
            addCriterion("replyname is null");
            return (Criteria) this;
        }

        public Criteria andReplynameIsNotNull() {
            addCriterion("replyname is not null");
            return (Criteria) this;
        }

        public Criteria andReplynameEqualTo(String value) {
            addCriterion("replyname =", value, "replyname");
            return (Criteria) this;
        }

        public Criteria andReplynameNotEqualTo(String value) {
            addCriterion("replyname <>", value, "replyname");
            return (Criteria) this;
        }

        public Criteria andReplynameGreaterThan(String value) {
            addCriterion("replyname >", value, "replyname");
            return (Criteria) this;
        }

        public Criteria andReplynameGreaterThanOrEqualTo(String value) {
            addCriterion("replyname >=", value, "replyname");
            return (Criteria) this;
        }

        public Criteria andReplynameLessThan(String value) {
            addCriterion("replyname <", value, "replyname");
            return (Criteria) this;
        }

        public Criteria andReplynameLessThanOrEqualTo(String value) {
            addCriterion("replyname <=", value, "replyname");
            return (Criteria) this;
        }

        public Criteria andReplynameLike(String value) {
            addCriterion("replyname like", value, "replyname");
            return (Criteria) this;
        }

        public Criteria andReplynameNotLike(String value) {
            addCriterion("replyname not like", value, "replyname");
            return (Criteria) this;
        }

        public Criteria andReplynameIn(List<String> values) {
            addCriterion("replyname in", values, "replyname");
            return (Criteria) this;
        }

        public Criteria andReplynameNotIn(List<String> values) {
            addCriterion("replyname not in", values, "replyname");
            return (Criteria) this;
        }

        public Criteria andReplynameBetween(String value1, String value2) {
            addCriterion("replyname between", value1, value2, "replyname");
            return (Criteria) this;
        }

        public Criteria andReplynameNotBetween(String value1, String value2) {
            addCriterion("replyname not between", value1, value2, "replyname");
            return (Criteria) this;
        }

        public Criteria andReplycontentIsNull() {
            addCriterion("replycontent is null");
            return (Criteria) this;
        }

        public Criteria andReplycontentIsNotNull() {
            addCriterion("replycontent is not null");
            return (Criteria) this;
        }

        public Criteria andReplycontentEqualTo(String value) {
            addCriterion("replycontent =", value, "replycontent");
            return (Criteria) this;
        }

        public Criteria andReplycontentNotEqualTo(String value) {
            addCriterion("replycontent <>", value, "replycontent");
            return (Criteria) this;
        }

        public Criteria andReplycontentGreaterThan(String value) {
            addCriterion("replycontent >", value, "replycontent");
            return (Criteria) this;
        }

        public Criteria andReplycontentGreaterThanOrEqualTo(String value) {
            addCriterion("replycontent >=", value, "replycontent");
            return (Criteria) this;
        }

        public Criteria andReplycontentLessThan(String value) {
            addCriterion("replycontent <", value, "replycontent");
            return (Criteria) this;
        }

        public Criteria andReplycontentLessThanOrEqualTo(String value) {
            addCriterion("replycontent <=", value, "replycontent");
            return (Criteria) this;
        }

        public Criteria andReplycontentLike(String value) {
            addCriterion("replycontent like", value, "replycontent");
            return (Criteria) this;
        }

        public Criteria andReplycontentNotLike(String value) {
            addCriterion("replycontent not like", value, "replycontent");
            return (Criteria) this;
        }

        public Criteria andReplycontentIn(List<String> values) {
            addCriterion("replycontent in", values, "replycontent");
            return (Criteria) this;
        }

        public Criteria andReplycontentNotIn(List<String> values) {
            addCriterion("replycontent not in", values, "replycontent");
            return (Criteria) this;
        }

        public Criteria andReplycontentBetween(String value1, String value2) {
            addCriterion("replycontent between", value1, value2, "replycontent");
            return (Criteria) this;
        }

        public Criteria andReplycontentNotBetween(String value1, String value2) {
            addCriterion("replycontent not between", value1, value2, "replycontent");
            return (Criteria) this;
        }

        public Criteria andReplytimeIsNull() {
            addCriterion("replytime is null");
            return (Criteria) this;
        }

        public Criteria andReplytimeIsNotNull() {
            addCriterion("replytime is not null");
            return (Criteria) this;
        }

        public Criteria andReplytimeEqualTo(Date value) {
            addCriterion("replytime =", value, "replytime");
            return (Criteria) this;
        }

        public Criteria andReplytimeNotEqualTo(Date value) {
            addCriterion("replytime <>", value, "replytime");
            return (Criteria) this;
        }

        public Criteria andReplytimeGreaterThan(Date value) {
            addCriterion("replytime >", value, "replytime");
            return (Criteria) this;
        }

        public Criteria andReplytimeGreaterThanOrEqualTo(Date value) {
            addCriterion("replytime >=", value, "replytime");
            return (Criteria) this;
        }

        public Criteria andReplytimeLessThan(Date value) {
            addCriterion("replytime <", value, "replytime");
            return (Criteria) this;
        }

        public Criteria andReplytimeLessThanOrEqualTo(Date value) {
            addCriterion("replytime <=", value, "replytime");
            return (Criteria) this;
        }

        public Criteria andReplytimeIn(List<Date> values) {
            addCriterion("replytime in", values, "replytime");
            return (Criteria) this;
        }

        public Criteria andReplytimeNotIn(List<Date> values) {
            addCriterion("replytime not in", values, "replytime");
            return (Criteria) this;
        }

        public Criteria andReplytimeBetween(Date value1, Date value2) {
            addCriterion("replytime between", value1, value2, "replytime");
            return (Criteria) this;
        }

        public Criteria andReplytimeNotBetween(Date value1, Date value2) {
            addCriterion("replytime not between", value1, value2, "replytime");
            return (Criteria) this;
        }

        public Criteria andLeavemsgidIsNull() {
            addCriterion("leavemsgid is null");
            return (Criteria) this;
        }

        public Criteria andLeavemsgidIsNotNull() {
            addCriterion("leavemsgid is not null");
            return (Criteria) this;
        }

        public Criteria andLeavemsgidEqualTo(String value) {
            addCriterion("leavemsgid =", value, "leavemsgid");
            return (Criteria) this;
        }

        public Criteria andLeavemsgidNotEqualTo(String value) {
            addCriterion("leavemsgid <>", value, "leavemsgid");
            return (Criteria) this;
        }

        public Criteria andLeavemsgidGreaterThan(String value) {
            addCriterion("leavemsgid >", value, "leavemsgid");
            return (Criteria) this;
        }

        public Criteria andLeavemsgidGreaterThanOrEqualTo(String value) {
            addCriterion("leavemsgid >=", value, "leavemsgid");
            return (Criteria) this;
        }

        public Criteria andLeavemsgidLessThan(String value) {
            addCriterion("leavemsgid <", value, "leavemsgid");
            return (Criteria) this;
        }

        public Criteria andLeavemsgidLessThanOrEqualTo(String value) {
            addCriterion("leavemsgid <=", value, "leavemsgid");
            return (Criteria) this;
        }

        public Criteria andLeavemsgidLike(String value) {
            addCriterion("leavemsgid like", value, "leavemsgid");
            return (Criteria) this;
        }

        public Criteria andLeavemsgidNotLike(String value) {
            addCriterion("leavemsgid not like", value, "leavemsgid");
            return (Criteria) this;
        }

        public Criteria andLeavemsgidIn(List<String> values) {
            addCriterion("leavemsgid in", values, "leavemsgid");
            return (Criteria) this;
        }

        public Criteria andLeavemsgidNotIn(List<String> values) {
            addCriterion("leavemsgid not in", values, "leavemsgid");
            return (Criteria) this;
        }

        public Criteria andLeavemsgidBetween(String value1, String value2) {
            addCriterion("leavemsgid between", value1, value2, "leavemsgid");
            return (Criteria) this;
        }

        public Criteria andLeavemsgidNotBetween(String value1, String value2) {
            addCriterion("leavemsgid not between", value1, value2, "leavemsgid");
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