package com.adverity.challenge.adverity.service;

import com.adverity.challenge.adverity.database.tables.IfactAggregateView;
import com.adverity.challenge.adverity.database.tables.records.IfactAggregateViewRecord;
import com.adverity.challenge.adverity.model.ReportDTO;
import com.adverity.challenge.adverity.model.RequestDTO;
import java.util.ArrayList;
import java.util.stream.Collectors;
import org.jooq.Condition;
import org.jooq.DSLContext;
import org.jooq.Result;
import org.jooq.impl.DSL;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Service which is used in Report Controller
 *
 * @author Piotr Lechnio <p.lechnio@webellian.com>
 */
@Service
public class ReportServiceImpl implements ReportService {

  @Autowired
  private DSLContext dsl;

  @Override
  public ArrayList<ReportDTO> getData(RequestDTO requestDTO) {
    IfactAggregateView ifactAggregateView = IfactAggregateView.IFACT_AGGREGATE_VIEW;

    Condition condition = DSL.noCondition();

    if (requestDTO.getAggregateId() != null) {
      condition = condition.and(
          ifactAggregateView.AGGREGATEID.equalIgnoreCase(requestDTO.getAggregateId().toString()));
    }
    if (requestDTO.getDatasource() != null && !requestDTO.getDatasource().isEmpty()) {
      condition = condition
          .and(ifactAggregateView.DATASOURCE.equalIgnoreCase((requestDTO.getDatasource())));
    }
    if (requestDTO.getCampaign() != null && !requestDTO.getCampaign().isEmpty()) {
      condition = condition
          .and(ifactAggregateView.CAMPAIGN.equalIgnoreCase((requestDTO.getCampaign())));
    }
    if (requestDTO.getDaily() != null && !requestDTO.getDaily().isEmpty()) {
      condition = condition.and(ifactAggregateView.DAILY.equalIgnoreCase((requestDTO.getDaily())));
    }

    Result<IfactAggregateViewRecord> records =
        dsl.selectFrom(ifactAggregateView)
            .where(condition)
            .fetch();

    return (ArrayList<ReportDTO>) records.stream().map(this::mapToDTO).collect(Collectors.toList());

  }

  private ReportDTO mapToDTO(IfactAggregateViewRecord record) {
    return new ReportDTO(record.getDatasource(), record.getCampaign(), record.getDaily(),
        record.getAggregate(), record.getMetric(), Long.parseLong(record.getValue().toString()));
  }

}
