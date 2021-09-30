package com.adverity.challenge.adverity.controller.controller;

import com.adverity.challenge.adverity.controller.ReportController;
import com.adverity.challenge.adverity.model.ReportRow;
import com.adverity.challenge.adverity.model.ResponseDTO;
import com.adverity.challenge.adverity.repository.ReportRepository;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import java.util.*;

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
    private ReportRepository repository;

    @Before
    public void init() {
        List<ReportRow> records = new ArrayList<>();
        records.add(new ReportRow("1", "Google", "Twitter", "25/08/19", "7", "Desc", "Clicks", "4", 22));
        records.add(new ReportRow("2", "Microsoft", "Twitter", "22/08/19", "2", "Desc", "Impressions", "2", 11));
        Mockito.when(repository.findAll(Mockito.any(Specification.class))).thenReturn(records);
    }

    @Test
    public void checkContexts() throws Exception {
        assert repository != null;
        assert controller != null;
    }

    /**
     * Test ALL OK to pull all the records form the API
     */
    @Test
    public void OK() throws Exception {
        Map<String, String> params = new HashMap<>();
        ResponseEntity<ResponseDTO> results = controller.getReport(params);
        assert results.getStatusCode() == HttpStatus.OK;
        assert Objects.requireNonNull(results.getBody()).getData().size() == 2;
    }

    /**
     * Tricky way to simulate internal server error
     */
    @Test
    public void InternalServerError() throws Exception {
        ResponseEntity<ResponseDTO> results = controller.getReport(null);
        assert results.getStatusCode() == HttpStatus.INTERNAL_SERVER_ERROR;
    }

    /**
     * Test with incorrect query string param - not allowed
     */
    @Test
    public void BadRequest() throws Exception {
        Map<String, String> params = new HashMap<>();
        params.put("RANDOMSTRING", "TEST");
        ResponseEntity<ResponseDTO> results = controller.getReport(params);
        assert results.getStatusCode() == HttpStatus.BAD_REQUEST;
    }
}
