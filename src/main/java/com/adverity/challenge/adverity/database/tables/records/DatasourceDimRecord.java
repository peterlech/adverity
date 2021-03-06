/*
 * This file is generated by jOOQ.
 */
package com.adverity.challenge.adverity.database.tables.records;


import com.adverity.challenge.adverity.database.tables.DatasourceDim;

import org.jooq.Field;
import org.jooq.Record1;
import org.jooq.Record2;
import org.jooq.Row2;
import org.jooq.impl.UpdatableRecordImpl;


/**
 * This class is generated by jOOQ.
 */
@SuppressWarnings({ "all", "unchecked", "rawtypes" })
public class DatasourceDimRecord extends UpdatableRecordImpl<DatasourceDimRecord> implements Record2<Object, String> {

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
     * Setter for <code>public.datasource_dim.name</code>.
     */
    public void setName(String value) {
        set(1, value);
    }

    /**
     * Getter for <code>public.datasource_dim.name</code>.
     */
    public String getName() {
        return (String) get(1);
    }

    // -------------------------------------------------------------------------
    // Primary key information
    // -------------------------------------------------------------------------

    @Override
    public Record1<Object> key() {
        return (Record1) super.key();
    }

    // -------------------------------------------------------------------------
    // Record2 type implementation
    // -------------------------------------------------------------------------

    @Override
    public Row2<Object, String> fieldsRow() {
        return (Row2) super.fieldsRow();
    }

    @Override
    public Row2<Object, String> valuesRow() {
        return (Row2) super.valuesRow();
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @Deprecated
    @Override
    public Field<Object> field1() {
        return DatasourceDim.DATASOURCE_DIM.ID;
    }

    @Override
    public Field<String> field2() {
        return DatasourceDim.DATASOURCE_DIM.NAME;
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
        return getName();
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
        return getName();
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @Deprecated
    @Override
    public DatasourceDimRecord value1(Object value) {
        setId(value);
        return this;
    }

    @Override
    public DatasourceDimRecord value2(String value) {
        setName(value);
        return this;
    }

    @Override
    public DatasourceDimRecord values(Object value1, String value2) {
        value1(value1);
        value2(value2);
        return this;
    }

    // -------------------------------------------------------------------------
    // Constructors
    // -------------------------------------------------------------------------

    /**
     * Create a detached DatasourceDimRecord
     */
    public DatasourceDimRecord() {
        super(DatasourceDim.DATASOURCE_DIM);
    }

    /**
     * Create a detached, initialised DatasourceDimRecord
     */
    public DatasourceDimRecord(Object id, String name) {
        super(DatasourceDim.DATASOURCE_DIM);

        setId(id);
        setName(name);
    }
}
