package com.adverity.challenge.adverity.model;

import java.math.BigDecimal;
import java.time.LocalDate;
import lombok.Builder;
import lombok.Value;

/**
 * Entity representing the record in the database in IFACT_AGGREGATE_VIEW table
 *
 * @author Piotr Lechnio <plechnio@gmail.com>
 */

@Value
@Builder
public class ReportDTO {

  String datasource;
  String campaign;
  LocalDate daily;
  String aggregate;
  String metric;
  double value;

}
