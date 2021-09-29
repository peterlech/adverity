package com.adverity.challenge.adverity.model;

import org.hibernate.annotations.Immutable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author Piotr Lechnio <p.lechnio@webellian.com>
 */

@Entity
@Table(name = "IFACT_VIEW")
public class ReportRow {
    @Id
    @Column(name = "ID")
    private long id;

    @Column(name = "DATASOURCE")
    private String datasource;

    @Column(name = "CAMPAIGN")
    private String campaign;

    @Column(name = "DAILY")
    private String daily;

    @Column(name = "CLICKS")
    private int click;

    @Column(name = "IMPRESSIONS")
    private int impressions;
    public ReportRow(){};
    public ReportRow(long id, String datasource, String campaign, String daily, int click, int impressions) {
        this.id = id;
        this.datasource = datasource;
        this.campaign = campaign;
        this.daily = daily;
        this.click = click;
        this.impressions = impressions;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getDatasource() {
        return datasource;
    }

    public void setDatasource(String datasource) {
        this.datasource = datasource;
    }

    public String getCampaign() {
        return campaign;
    }

    public void setCampaign(String campaign) {
        this.campaign = campaign;
    }

    public String getDaily() {
        return daily;
    }

    public void setDaily(String daily) {
        this.daily = daily;
    }

    public int getClick() {
        return click;
    }

    public void setClick(int click) {
        this.click = click;
    }

    public int getImpressions() {
        return impressions;
    }

    public void setImpressions(int impressions) {
        this.impressions = impressions;
    }

}
