/*
 * This file is generated by jOOQ.
 */
package com.adverity.challenge.adverity.database.tables.records;


import com.adverity.challenge.adverity.database.tables.IfactAggregateView;

import org.jooq.Field;
import org.jooq.Record9;
import org.jooq.Row9;
import org.jooq.impl.TableRecordImpl;


/**
 * This class is generated by jOOQ.
 */
@SuppressWarnings({ "all", "unchecked", "rawtypes" })
public class IfactAggregateViewRecord extends TableRecordImpl<IfactAggregateViewRecord> implements Record9<Object, String, String, String, Object, String, Object, String, Object> {

    private static final long serialVersionUID = 1L;

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @Deprecated
    public void setId(Object value) {
        set(0, value);
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @Deprecated
    public Object getId() {
        return get(0);
    }

    /**
     * Setter for <code>public.ifact_aggregate_view.datasource</code>.
     */
    public void setDatasource(String value) {
        set(1, value);
    }

    /**
     * Getter for <code>public.ifact_aggregate_view.datasource</code>.
     */
    public String getDatasource() {
        return (String) get(1);
    }

    /**
     * Setter for <code>public.ifact_aggregate_view.daily</code>.
     */
    public void setDaily(String value) {
        set(2, value);
    }

    /**
     * Getter for <code>public.ifact_aggregate_view.daily</code>.
     */
    public String getDaily() {
        return (String) get(2);
    }

    /**
     * Setter for <code>public.ifact_aggregate_view.campaign</code>.
     */
    public void setCampaign(String value) {
        set(3, value);
    }

    /**
     * Getter for <code>public.ifact_aggregate_view.campaign</code>.
     */
    public String getCampaign() {
        return (String) get(3);
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @Deprecated
    public void setAggregateid(Object value) {
        set(4, value);
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @Deprecated
    public Object getAggregateid() {
        return get(4);
    }

    /**
     * Setter for <code>public.ifact_aggregate_view.aggregate</code>.
     */
    public void setAggregate(String value) {
        set(5, value);
    }

    /**
     * Getter for <code>public.ifact_aggregate_view.aggregate</code>.
     */
    public String getAggregate() {
        return (String) get(5);
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @Deprecated
    public void setMetricid(Object value) {
        set(6, value);
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @Deprecated
    public Object getMetricid() {
        return get(6);
    }

    /**
     * Setter for <code>public.ifact_aggregate_view.metric</code>.
     */
    public void setMetric(String value) {
        set(7, value);
    }

    /**
     * Getter for <code>public.ifact_aggregate_view.metric</code>.
     */
    public String getMetric() {
        return (String) get(7);
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @Deprecated
    public void setValue(Object value) {
        set(8, value);
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @Deprecated
    public Object getValue() {
        return get(8);
    }

    // -------------------------------------------------------------------------
    // Record9 type implementation
    // -------------------------------------------------------------------------

    @Override
    public Row9<Object, String, String, String, Object, String, Object, String, Object> fieldsRow() {
        return (Row9) super.fieldsRow();
    }

    @Override
    public Row9<Object, String, String, String, Object, String, Object, String, Object> valuesRow() {
        return (Row9) super.valuesRow();
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @Deprecated
    @Override
    public Field<Object> field1() {
        return IfactAggregateView.IFACT_AGGREGATE_VIEW.ID;
    }

    @Override
    public Field<String> field2() {
        return IfactAggregateView.IFACT_AGGREGATE_VIEW.DATASOURCE;
    }

    @Override
    public Field<String> field3() {
        return IfactAggregateView.IFACT_AGGREGATE_VIEW.DAILY;
    }

    @Override
    public Field<String> field4() {
        return IfactAggregateView.IFACT_AGGREGATE_VIEW.CAMPAIGN;
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @Deprecated
    @Override
    public Field<Object> field5() {
        return IfactAggregateView.IFACT_AGGREGATE_VIEW.AGGREGATEID;
    }

    @Override
    public Field<String> field6() {
        return IfactAggregateView.IFACT_AGGREGATE_VIEW.AGGREGATE;
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @Deprecated
    @Override
    public Field<Object> field7() {
        return IfactAggregateView.IFACT_AGGREGATE_VIEW.METRICID;
    }

    @Override
    public Field<String> field8() {
        return IfactAggregateView.IFACT_AGGREGATE_VIEW.METRIC;
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @Deprecated
    @Override
    public Field<Object> field9() {
        return IfactAggregateView.IFACT_AGGREGATE_VIEW.VALUE;
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @Deprecated
    @Override
    public Object component1() {
        return getId();
    }

    @Override
    public String component2() {
        return getDatasource();
    }

    @Override
    public String component3() {
        return getDaily();
    }

    @Override
    public String component4() {
        return getCampaign();
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @Deprecated
    @Override
    public Object component5() {
        return getAggregateid();
    }

    @Override
    public String component6() {
        return getAggregate();
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @Deprecated
    @Override
    public Object component7() {
        return getMetricid();
    }

    @Override
    public String component8() {
        return getMetric();
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @Deprecated
    @Override
    public Object component9() {
        return getValue();
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @Deprecated
    @Override
    public Object value1() {
        return getId();
    }

    @Override
    public String value2() {
        return getDatasource();
    }

    @Override
    public String value3() {
        return getDaily();
    }

    @Override
    public String value4() {
        return getCampaign();
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @Deprecated
    @Override
    public Object value5() {
        return getAggregateid();
    }

    @Override
    public String value6() {
        return getAggregate();
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @Deprecated
    @Override
    public Object value7() {
        return getMetricid();
    }

    @Override
    public String value8() {
        return getMetric();
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @Deprecated
    @Override
    public Object value9() {
        return getValue();
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @Deprecated
    @Override
    public IfactAggregateViewRecord value1(Object value) {
        setId(value);
        return this;
    }

    @Override
    public IfactAggregateViewRecord value2(String value) {
        setDatasource(value);
        return this;
    }

    @Override
    public IfactAggregateViewRecord value3(String value) {
        setDaily(value);
        return this;
    }

    @Override
    public IfactAggregateViewRecord value4(String value) {
        setCampaign(value);
        return this;
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @Deprecated
    @Override
    public IfactAggregateViewRecord value5(Object value) {
        setAggregateid(value);
        return this;
    }

    @Override
    public IfactAggregateViewRecord value6(String value) {
        setAggregate(value);
        return this;
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @Deprecated
    @Override
    public IfactAggregateViewRecord value7(Object value) {
        setMetricid(value);
        return this;
    }

    @Override
    public IfactAggregateViewRecord value8(String value) {
        setMetric(value);
        return this;
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @Deprecated
    @Override
    public IfactAggregateViewRecord value9(Object value) {
        setValue(value);
        return this;
    }

    @Override
    public IfactAggregateViewRecord values(Object value1, String value2, String value3, String value4, Object value5, String value6, Object value7, String value8, Object value9) {
        value1(value1);
        value2(value2);
        value3(value3);
        value4(value4);
        value5(value5);
        value6(value6);
        value7(value7);
        value8(value8);
        value9(value9);
        return this;
    }

    // -------------------------------------------------------------------------
    // Constructors
    // -------------------------------------------------------------------------

    /**
     * Create a detached IfactAggregateViewRecord
     */
    public IfactAggregateViewRecord() {
        super(IfactAggregateView.IFACT_AGGREGATE_VIEW);
    }

    /**
     * Create a detached, initialised IfactAggregateViewRecord
     */
    public IfactAggregateViewRecord(Object id, String datasource, String daily, String campaign, Object aggregateid, String aggregate, Object metricid, String metric, Object value) {
        super(IfactAggregateView.IFACT_AGGREGATE_VIEW);

        setId(id);
        setDatasource(datasource);
        setDaily(daily);
        setCampaign(campaign);
        setAggregateid(aggregateid);
        setAggregate(aggregate);
        setMetricid(metricid);
        setMetric(metric);
        setValue(value);
    }
}
