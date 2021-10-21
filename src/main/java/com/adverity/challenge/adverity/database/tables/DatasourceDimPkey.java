/*
 * This file is generated by jOOQ.
 */
package com.adverity.challenge.adverity.database.tables;


import com.adverity.challenge.adverity.database.Public;
import com.adverity.challenge.adverity.database.tables.records.DatasourceDimPkeyRecord;

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
public class DatasourceDimPkey extends TableImpl<DatasourceDimPkeyRecord> {

    private static final long serialVersionUID = 1L;

    /**
     * The reference instance of <code>public.datasource_dim_pkey</code>
     */
    public static final DatasourceDimPkey DATASOURCE_DIM_PKEY = new DatasourceDimPkey();

    /**
     * The class holding records for this type
     */
    @Override
    public Class<DatasourceDimPkeyRecord> getRecordType() {
        return DatasourceDimPkeyRecord.class;
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @Deprecated
    public final TableField<DatasourceDimPkeyRecord, Object> ID = createField(DSL.name("id"), SQLDataType.OTHER, this, "");

    private DatasourceDimPkey(Name alias, Table<DatasourceDimPkeyRecord> aliased) {
        this(alias, aliased, null);
    }

    private DatasourceDimPkey(Name alias, Table<DatasourceDimPkeyRecord> aliased, Field<?>[] parameters) {
        super(alias, null, aliased, parameters, DSL.comment(""), TableOptions.table());
    }

    /**
     * Create an aliased <code>public.datasource_dim_pkey</code> table reference
     */
    public DatasourceDimPkey(String alias) {
        this(DSL.name(alias), DATASOURCE_DIM_PKEY);
    }

    /**
     * Create an aliased <code>public.datasource_dim_pkey</code> table reference
     */
    public DatasourceDimPkey(Name alias) {
        this(alias, DATASOURCE_DIM_PKEY);
    }

    /**
     * Create a <code>public.datasource_dim_pkey</code> table reference
     */
    public DatasourceDimPkey() {
        this(DSL.name("datasource_dim_pkey"), null);
    }

    public <O extends Record> DatasourceDimPkey(Table<O> child, ForeignKey<O, DatasourceDimPkeyRecord> key) {
        super(child, key, DATASOURCE_DIM_PKEY);
    }

    @Override
    public Schema getSchema() {
        return Public.PUBLIC;
    }

    @Override
    public DatasourceDimPkey as(String alias) {
        return new DatasourceDimPkey(DSL.name(alias), this);
    }

    @Override
    public DatasourceDimPkey as(Name alias) {
        return new DatasourceDimPkey(alias, this);
    }

    /**
     * Rename this table
     */
    @Override
    public DatasourceDimPkey rename(String name) {
        return new DatasourceDimPkey(DSL.name(name), null);
    }

    /**
     * Rename this table
     */
    @Override
    public DatasourceDimPkey rename(Name name) {
        return new DatasourceDimPkey(name, null);
    }

    // -------------------------------------------------------------------------
    // Row1 type methods
    // -------------------------------------------------------------------------

    @Override
    public Row1<Object> fieldsRow() {
        return (Row1) super.fieldsRow();
    }
}