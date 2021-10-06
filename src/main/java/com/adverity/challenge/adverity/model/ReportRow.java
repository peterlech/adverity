package com.adverity.challenge.adverity.model;

import lombok.AllArgsConstructor;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import lombok.NoArgsConstructor;

/**
 *
 * Entity representing the record in the database in IFACT_AGGREGATE_VIEW table
 * @author Piotr Lechnio <plechnio@gmail.com>
 */

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
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

}
