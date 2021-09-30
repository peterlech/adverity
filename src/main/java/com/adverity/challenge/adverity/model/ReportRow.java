package com.adverity.challenge.adverity.model;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * Entity representing the record in the database in IFACT_AGGREGATE_VIEW table
 * @author Piotr Lechnio <plechnio@gmail.com>
 */

@Entity
@Data
@Table(name = "IFACT_AGGREGATE_VIEW")
public class ReportRow {
    @Id
    @Column(name = "ID")
    private String id;

    @Column(name = "DATASOURCE")
    private String datasource;

    @Column(name = "CAMPAIGN")
    private String campaign;

    @Column(name = "DAILY")
    private String daily;

    @Column(name = "AGGREGATEID")
    private String aggregateid;

    @Column(name = "AGGREGATE")
    private String aggregate;

    @Column(name = "METRICID")
    private String metricid;

    @Column(name = "METRIC")
    private String metric;

    @Column(name = "VALUE")
    private long value;

    public ReportRow(String id, String datasource, String campaign, String daily, String aggregateid, String aggregate, String metricid, String metric, long value) {
        this.id = id;
        this.datasource = datasource;
        this.campaign = campaign;
        this.daily = daily;
        this.aggregateid = aggregateid;
        this.aggregate = aggregate;
        this.metricid = metricid;
        this.metric = metric;
        this.value = value;
    }
}
