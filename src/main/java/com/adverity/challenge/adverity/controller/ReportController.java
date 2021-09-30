package com.adverity.challenge.adverity.controller;

import com.adverity.challenge.adverity.model.ReportRow;
import com.adverity.challenge.adverity.repository.ReportRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @author Piotr Lechnio <p.lechnio@webellian.com>
 */
@RestController
@RequestMapping("/api")
public class ReportController {

    @Autowired
    private
    ReportRepository reportRepository;

    @GetMapping("/report")
    public ResponseEntity<List<ReportRow>> getReport(@RequestParam(required = false) Map<String, String> parameters) {
        try {
            List<ReportRow> report = new ArrayList<ReportRow>(reportRepository.findAll(getSpecification(parameters)));
            if (report.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }
            return new ResponseEntity<>(report, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    /**
     * Builds and return specification object that filters data based on search string
     *
     * @param  parameters
     *
     * @return Specification with Employee Id and Filter Text
     */
    private Specification<ReportRow> getSpecification(Map<String, String> parameters)
    {
        //Build Specification
        return (root, criteriaQuery, criteriaBuilder) ->
                generateWhereClause(root, criteriaBuilder, parameters);
    }

    private Predicate generateWhereClause(Root<ReportRow> root, CriteriaBuilder criteriaBuilder, Map<String, String> parameters){
        List<Predicate> predicates = new ArrayList<>();
        for (Map.Entry<String, String> entry : parameters.entrySet()) {
            Predicate predicate = criteriaBuilder.equal(root.get(entry.getKey()), entry.getValue());
            predicates.add(predicate);
        }
        return criteriaBuilder.and(predicates.toArray(Predicate[]::new));
    }
}
