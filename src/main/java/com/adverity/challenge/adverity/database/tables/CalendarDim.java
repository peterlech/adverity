/*
 * This file is generated by jOOQ.
 */
package com.adverity.challenge.adverity.database.tables;


import com.adverity.challenge.adverity.database.Keys;
import com.adverity.challenge.adverity.database.Public;
import com.adverity.challenge.adverity.database.tables.records.CalendarDimRecord;

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
public class CalendarDim extends TableImpl<CalendarDimRecord> {

    private static final long serialVersionUID = 1L;

    /**
     * The reference instance of <code>public.calendar_dim</code>
     */
    public static final CalendarDim CALENDAR_DIM = new CalendarDim();

    /**
     * The class holding records for this type
     */
    @Override
    public Class<CalendarDimRecord> getRecordType() {
        return CalendarDimRecord.class;
    }

    /**
     * @deprecated Unknown data type. Please define an explicit {@link org.jooq.Binding} to specify how this type should be handled. Deprecation can be turned off using {@literal <deprecationOnUnknownTypes/>} in your code generator configuration.
     */
    @Deprecated
    public final TableField<CalendarDimRecord, Object> ID = createField(DSL.name("id"), SQLDataType.OTHER, this, "");

    /**
     * The column <code>public.calendar_dim.day</code>.
     */
    public final TableField<CalendarDimRecord, String> DAY = createField(DSL.name("day"), SQLDataType.VARCHAR(20), this, "");

    private CalendarDim(Name alias, Table<CalendarDimRecord> aliased) {
        this(alias, aliased, null);
    }

    private CalendarDim(Name alias, Table<CalendarDimRecord> aliased, Field<?>[] parameters) {
        super(alias, null, aliased, parameters, DSL.comment(""), TableOptions.table());
    }

    /**
     * Create an aliased <code>public.calendar_dim</code> table reference
     */
    public CalendarDim(String alias) {
        this(DSL.name(alias), CALENDAR_DIM);
    }

    /**
     * Create an aliased <code>public.calendar_dim</code> table reference
     */
    public CalendarDim(Name alias) {
        this(alias, CALENDAR_DIM);
    }

    /**
     * Create a <code>public.calendar_dim</code> table reference
     */
    public CalendarDim() {
        this(DSL.name("calendar_dim"), null);
    }

    public <O extends Record> CalendarDim(Table<O> child, ForeignKey<O, CalendarDimRecord> key) {
        super(child, key, CALENDAR_DIM);
    }

    @Override
    public Schema getSchema() {
        return Public.PUBLIC;
    }

    @Override
    public UniqueKey<CalendarDimRecord> getPrimaryKey() {
        return Keys.PK_CALENDAR_DIM;
    }

    @Override
    public List<UniqueKey<CalendarDimRecord>> getKeys() {
        return Arrays.<UniqueKey<CalendarDimRecord>>asList(Keys.PK_CALENDAR_DIM);
    }

    @Override
    public CalendarDim as(String alias) {
        return new CalendarDim(DSL.name(alias), this);
    }

    @Override
    public CalendarDim as(Name alias) {
        return new CalendarDim(alias, this);
    }

    /**
     * Rename this table
     */
    @Override
    public CalendarDim rename(String name) {
        return new CalendarDim(DSL.name(name), null);
    }

    /**
     * Rename this table
     */
    @Override
    public CalendarDim rename(Name name) {
        return new CalendarDim(name, null);
    }

    // -------------------------------------------------------------------------
    // Row2 type methods
    // -------------------------------------------------------------------------

    @Override
    public Row2<Object, String> fieldsRow() {
        return (Row2) super.fieldsRow();
    }
}
