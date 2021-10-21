package com.adverity.challenge.adverity.controller.controller;

import com.adverity.challenge.adverity.controller.ReportController;
import com.adverity.challenge.adverity.model.RequestDTO;
import com.adverity.challenge.adverity.model.ResponseDTO;
import com.adverity.challenge.adverity.service.ReportService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

/**
 * Test class for Report Controller
 *
 * @author Piotr Lechnio <plechnio@gmail.com>
 */

@RunWith(MockitoJUnitRunner.class)
public class ReportControllerTest {

  @InjectMocks
  private ReportController controller;

  @Mock
  private ReportService reportService;

  @Test
  public void checkContexts() throws Exception {
    assert controller != null;
    assert reportService != null;
  }

  /**
   * Test ALL OK to pull all the records form the API
   */
  @Test
  public void OK() throws Exception {
    ResponseEntity<ResponseDTO> results = controller.getReport(new RequestDTO());
    assert results.getStatusCode() == HttpStatus.OK;
  }
}
