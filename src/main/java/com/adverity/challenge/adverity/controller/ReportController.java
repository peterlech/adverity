package com.adverity.challenge.adverity.controller;

import com.adverity.challenge.adverity.model.RequestDTO;
import com.adverity.challenge.adverity.model.ResponseDTO;
import com.adverity.challenge.adverity.service.ReportService;
import java.util.ArrayList;
import javax.validation.Valid;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Piotr Lechnio <plechnio@gmail.com>
 */
@RestController
@RequestMapping("/api")
public class ReportController {

  Logger logger = LoggerFactory.getLogger(ReportController.class);

  @Autowired
  private ReportService reportService;

  /**
   * @param requestDTO request body, contains all filters
   * @return returns the Response Entity object which is based on Record Row class.
   */
  @GetMapping("/report")
  public ResponseEntity<ResponseDTO> getReport(@RequestBody @Valid RequestDTO requestDTO) {
    try {
      return new ResponseEntity<>(
          ResponseDTO.builder()
              .message("OK")
              .code(HttpStatus.OK.toString())
              .data(reportService.getData(requestDTO))
              .build(),
          HttpStatus.OK);
    } catch (Exception e) {
      logger.error(e.getMessage());
      return new ResponseEntity<>(
          ResponseDTO.builder()
              .message("Something went wrong...")
              .code(HttpStatus.INTERNAL_SERVER_ERROR.toString())
              .build(),
          HttpStatus.INTERNAL_SERVER_ERROR);
    }
  }
}
