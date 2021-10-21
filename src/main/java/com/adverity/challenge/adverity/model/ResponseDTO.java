package com.adverity.challenge.adverity.model;

import java.util.List;
import lombok.Data;

/**
 * Application will always return this objects of these class.
 *
 * @author Piotr Lechnio <plechnio@gmail.com>
 */
@Data
public class ResponseDTO {

  private String message;
  private String code;
  private List<ReportDTO> data;

  public ResponseDTO(String message, String code, List<ReportDTO> data) {
    this.message = message;
    this.code = code;
    this.data = data;
  }
}
