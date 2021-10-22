package com.adverity.challenge.adverity.model;


import com.fasterxml.jackson.annotation.JsonFormat;
import java.time.LocalDate;
import java.util.List;
import lombok.Value;

/**
 * Entity representing the request body
 *
 * @author Piotr Lechnio <plechnio@gmail.com>
 */
@Value
public class RequestDTO {


  List<Integer> aggregateId;
  List<Integer> metricId;
  String datasource;
  String campaign;
  @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "YYYY-MM-DD")
  LocalDate startDate;
  @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "YYYY-MM-DD")
  LocalDate endDate;
}

