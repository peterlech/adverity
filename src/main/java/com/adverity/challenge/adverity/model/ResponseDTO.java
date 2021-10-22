package com.adverity.challenge.adverity.model;

import java.util.List;
import lombok.Builder;
import lombok.Value;

/**
 * Application will always return this objects of these class.
 *
 * @author Piotr Lechnio <plechnio@gmail.com>
 */
@Value
@Builder
public class ResponseDTO {

  String message;
  String code;
  List<ReportDTO> data;

}
