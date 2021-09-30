package com.adverity.challenge.adverity.model;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author Piotr Lechnio <p.lechnio@webellian.com>
 */

@Entity
@Data
@Table(name = "IFACT_AGGREGATE_VIEW")
public class ReportRow {
    @Id
    @Column(name = "ID")
    private long id;

    private String datasource;

    private String campaign;

    private String daily;

    @Column(name = "AGGREGATEID")
    private long aggregateId;

    private String aggregate;

    @Column(name = "METRICID")
    private long metricId;

    private String metric;

    private long value;


}
