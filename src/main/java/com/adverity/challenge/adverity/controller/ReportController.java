package com.adverity.challenge.adverity.controller;

import com.adverity.challenge.adverity.model.ReportRow;
import com.adverity.challenge.adverity.repository.ReportRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Piotr Lechnio <p.lechnio@webellian.com>
 */
@RestController
@RequestMapping("/api")
public class ReportController {

    @Autowired
    ReportRepository reportRepository;

    @GetMapping("/report")
    public ResponseEntity<List<ReportRow>> getReport() {
        try {
            List<ReportRow> report = new ArrayList<ReportRow>(reportRepository.findAll());
            if (report.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }
            return new ResponseEntity<>(report, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
