/*
 * This file is generated by jOOQ.
 */
package com.adverity.challenge.adverity.database.tables.records;


import com.adverity.challenge.adverity.database.tables.CampaignDimPkey;

import org.jooq.Field;
import org.jooq.Record1;
import org.jooq.Row1;
import org.jooq.impl.TableRecordImpl;


/**
 * This class is generated by jOOQ.
 */
@SuppressWarnings({ "all", "unchecked", "rawtypes" })
public class CampaignDimPkeyRecord extends TableRecordImpl<CampaignDimPkeyRecord> implements Record1<Object> {

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

    // -------------------------------------------------------------------------
    // Record1 type implementation
    // -------------------------------------------------------------------------

    @Override
    public Row1<Object> fieldsRow() {
        return (Row1) super.fieldsRow();
    }

    @Override
    public Row1<Object> valuesRow() {
        return (Row1) super.valuesRow();
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @Deprecated
    @Override
    public Field<Object> field1() {
        return CampaignDimPkey.CAMPAIGN_DIM_PKEY.ID;
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @Deprecated
    @Override
    public Object component1() {
        return getId();
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @Deprecated
    @Override
    public Object value1() {
        return getId();
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @Deprecated
    @Override
    public CampaignDimPkeyRecord value1(Object value) {
        setId(value);
        return this;
    }

    @Override
    public CampaignDimPkeyRecord values(Object value1) {
        value1(value1);
        return this;
    }

    // -------------------------------------------------------------------------
    // Constructors
    // -------------------------------------------------------------------------

    /**
     * Create a detached CampaignDimPkeyRecord
     */
    public CampaignDimPkeyRecord() {
        super(CampaignDimPkey.CAMPAIGN_DIM_PKEY);
    }

    /**
     * Create a detached, initialised CampaignDimPkeyRecord
     */
    public CampaignDimPkeyRecord(Object id) {
        super(CampaignDimPkey.CAMPAIGN_DIM_PKEY);

        setId(id);
    }
}
