package com.adverity.challenge.adverity.controller;

import com.adverity.challenge.adverity.model.RequestDTO;
import com.adverity.challenge.adverity.model.ResponseDTO;
import com.adverity.challenge.adverity.service.ReportService;
import java.util.ArrayList;
import javax.validation.Valid;
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
          new ResponseDTO("OK", HttpStatus.OK.toString(), reportService.getData(requestDTO)),
          HttpStatus.OK);
    } catch (Exception e) {
      return new ResponseEntity<>(
          new ResponseDTO("Something went wrong...", HttpStatus.INTERNAL_SERVER_ERROR.toString(),
              new ArrayList<>()), HttpStatus.INTERNAL_SERVER_ERROR);
    }
  }
}
