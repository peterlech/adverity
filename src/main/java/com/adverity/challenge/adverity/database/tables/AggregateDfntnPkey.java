/*
 * This file is generated by jOOQ.
 */
package com.adverity.challenge.adverity.database.tables;


import com.adverity.challenge.adverity.database.Public;
import com.adverity.challenge.adverity.database.tables.records.AggregateDfntnPkeyRecord;

import org.jooq.Field;
import org.jooq.ForeignKey;
import org.jooq.Name;
import org.jooq.Record;
import org.jooq.Row1;
import org.jooq.Schema;
import org.jooq.Table;
import org.jooq.TableField;
import org.jooq.TableOptions;
import org.jooq.impl.DSL;
import org.jooq.impl.SQLDataType;
import org.jooq.impl.TableImpl;


/**
 * This class is generated by jOOQ.
 */
@SuppressWarnings({ "all", "unchecked", "rawtypes" })
public class AggregateDfntnPkey extends TableImpl<AggregateDfntnPkeyRecord> {

    private static final long serialVersionUID = 1L;

    /**
     * The reference instance of <code>public.aggregate_dfntn_pkey</code>
     */
    public static final AggregateDfntnPkey AGGREGATE_DFNTN_PKEY = new AggregateDfntnPkey();

    /**
     * The class holding records for this type
     */
    @Override
    public Class<AggregateDfntnPkeyRecord> getRecordType() {
        return AggregateDfntnPkeyRecord.class;
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @Deprecated
    public final TableField<AggregateDfntnPkeyRecord, Object> ID = createField(DSL.name("id"), SQLDataType.OTHER, this, "");

    private AggregateDfntnPkey(Name alias, Table<AggregateDfntnPkeyRecord> aliased) {
        this(alias, aliased, null);
    }

    private AggregateDfntnPkey(Name alias, Table<AggregateDfntnPkeyRecord> aliased, Field<?>[] parameters) {
        super(alias, null, aliased, parameters, DSL.comment(""), TableOptions.table());
    }

    /**
     * Create an aliased <code>public.aggregate_dfntn_pkey</code> table reference
     */
    public AggregateDfntnPkey(String alias) {
        this(DSL.name(alias), AGGREGATE_DFNTN_PKEY);
    }

    /**
     * Create an aliased <code>public.aggregate_dfntn_pkey</code> table reference
     */
    public AggregateDfntnPkey(Name alias) {
        this(alias, AGGREGATE_DFNTN_PKEY);
    }

    /**
     * Create a <code>public.aggregate_dfntn_pkey</code> table reference
     */
    public AggregateDfntnPkey() {
        this(DSL.name("aggregate_dfntn_pkey"), null);
    }

    public <O extends Record> AggregateDfntnPkey(Table<O> child, ForeignKey<O, AggregateDfntnPkeyRecord> key) {
        super(child, key, AGGREGATE_DFNTN_PKEY);
    }

    @Override
    public Schema getSchema() {
        return Public.PUBLIC;
    }

    @Override
    public AggregateDfntnPkey as(String alias) {
        return new AggregateDfntnPkey(DSL.name(alias), this);
    }

    @Override
    public AggregateDfntnPkey as(Name alias) {
        return new AggregateDfntnPkey(alias, this);
    }

    /**
     * Rename this table
     */
    @Override
    public AggregateDfntnPkey rename(String name) {
        return new AggregateDfntnPkey(DSL.name(name), null);
    }

    /**
     * Rename this table
     */
    @Override
    public AggregateDfntnPkey rename(Name name) {
        return new AggregateDfntnPkey(name, null);
    }

    // -------------------------------------------------------------------------
    // Row1 type methods
    // -------------------------------------------------------------------------

    @Override
    public Row1<Object> fieldsRow() {
        return (Row1) super.fieldsRow();
    }
}
