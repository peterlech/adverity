/*
 * This file is generated by jOOQ.
 */
package com.adverity.challenge.adverity.database.tables;


import com.adverity.challenge.adverity.database.Keys;
import com.adverity.challenge.adverity.database.Public;
import com.adverity.challenge.adverity.database.tables.records.CampaignDimRecord;

import java.util.Arrays;
import java.util.List;

import org.jooq.Field;
import org.jooq.ForeignKey;
import org.jooq.Name;
import org.jooq.Record;
import org.jooq.Row2;
import org.jooq.Schema;
import org.jooq.Table;
import org.jooq.TableField;
import org.jooq.TableOptions;
import org.jooq.UniqueKey;
import org.jooq.impl.DSL;
import org.jooq.impl.SQLDataType;
import org.jooq.impl.TableImpl;


/**
 * This class is generated by jOOQ.
 */
@SuppressWarnings({ "all", "unchecked", "rawtypes" })
public class CampaignDim extends TableImpl<CampaignDimRecord> {

    private static final long serialVersionUID = 1L;

    /**
     * The reference instance of <code>public.campaign_dim</code>
     */
    public static final CampaignDim CAMPAIGN_DIM = new CampaignDim();

    /**
     * The class holding records for this type
     */
    @Override
    public Class<CampaignDimRecord> getRecordType() {
        return CampaignDimRecord.class;
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @Deprecated
    public final TableField<CampaignDimRecord, Object> ID = createField(DSL.name("id"), SQLDataType.OTHER, this, "");

    /**
     * The column <code>public.campaign_dim.name</code>.
     */
    public final TableField<CampaignDimRecord, String> NAME = createField(DSL.name("name"), SQLDataType.VARCHAR(255), this, "");

    private CampaignDim(Name alias, Table<CampaignDimRecord> aliased) {
        this(alias, aliased, null);
    }

    private CampaignDim(Name alias, Table<CampaignDimRecord> aliased, Field<?>[] parameters) {
        super(alias, null, aliased, parameters, DSL.comment(""), TableOptions.table());
    }

    /**
     * Create an aliased <code>public.campaign_dim</code> table reference
     */
    public CampaignDim(String alias) {
        this(DSL.name(alias), CAMPAIGN_DIM);
    }

    /**
     * Create an aliased <code>public.campaign_dim</code> table reference
     */
    public CampaignDim(Name alias) {
        this(alias, CAMPAIGN_DIM);
    }

    /**
     * Create a <code>public.campaign_dim</code> table reference
     */
    public CampaignDim() {
        this(DSL.name("campaign_dim"), null);
    }

    public <O extends Record> CampaignDim(Table<O> child, ForeignKey<O, CampaignDimRecord> key) {
        super(child, key, CAMPAIGN_DIM);
    }

    @Override
    public Schema getSchema() {
        return Public.PUBLIC;
    }

    @Override
    public UniqueKey<CampaignDimRecord> getPrimaryKey() {
        return Keys.PK_CAMPAIGN_DIM;
    }

    @Override
    public List<UniqueKey<CampaignDimRecord>> getKeys() {
        return Arrays.<UniqueKey<CampaignDimRecord>>asList(Keys.PK_CAMPAIGN_DIM);
    }

    @Override
    public CampaignDim as(String alias) {
        return new CampaignDim(DSL.name(alias), this);
    }

    @Override
    public CampaignDim as(Name alias) {
        return new CampaignDim(alias, this);
    }

    /**
     * Rename this table
     */
    @Override
    public CampaignDim rename(String name) {
        return new CampaignDim(DSL.name(name), null);
    }

    /**
     * Rename this table
     */
    @Override
    public CampaignDim rename(Name name) {
        return new CampaignDim(name, null);
    }

    // -------------------------------------------------------------------------
    // Row2 type methods
    // -------------------------------------------------------------------------

    @Override
    public Row2<Object, String> fieldsRow() {
        return (Row2) super.fieldsRow();
    }
}