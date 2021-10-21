package com.adverity.challenge.adverity.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Entity representing the request body
 *
 * @author Piotr Lechnio <plechnio@gmail.com>
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class RequestDTO {

  private Integer aggregateId;
  private String datasource;
  private String campaign;
  private String daily;
}
