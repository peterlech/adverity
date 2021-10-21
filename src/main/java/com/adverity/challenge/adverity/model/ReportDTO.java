package com.adverity.challenge.adverity.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Entity representing the record in the database in IFACT_AGGREGATE_VIEW table
 *
 * @author Piotr Lechnio <plechnio@gmail.com>
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReportDTO {

  private String datasource;
  private String campaign;
  private String daily;
  private String aggregate;
  private String metric;
  private long value;

}
