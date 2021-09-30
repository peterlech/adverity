package com.adverity.challenge.adverity.controller;

import com.adverity.challenge.adverity.model.ResponseDTO;
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
import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 *
 * @author Piotr Lechnio <plechnio@gmail.com>
 */
@RestController
@RequestMapping("/api")
public class ReportController {

    @Autowired
    private
    ReportRepository reportRepository;

    /**
     * @param parameters Map of parameters which user can pass in a query string
     * @return returns the Response Entity object which is based on Record Row class.
     */
    @GetMapping("/report")
    public ResponseEntity<ResponseDTO> getReport(@RequestParam(required = false) Map<String, String> parameters) {
        try {
            if(!validateRequestParam(parameters)){
                return new ResponseEntity<>(new ResponseDTO("Invalid parameter", HttpStatus.BAD_REQUEST.toString(), new ArrayList<>()), HttpStatus.BAD_REQUEST);
            }
            List<ReportRow> report = new ArrayList<ReportRow>(reportRepository.findAll(getSpecification(parameters)));
            return new ResponseEntity<>(new ResponseDTO("OK", HttpStatus.OK.toString(), report), HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(new ResponseDTO("Something went wrong...", HttpStatus.INTERNAL_SERVER_ERROR.toString(), new ArrayList<>()), HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    /**
     * Builds and return specification object that filters data based on search string
     *
     * @param  parameters Request params for the API call.
     *
     * @return Specification which filters results based on all provided request params
     */
    private Specification<ReportRow> getSpecification(Map<String, String> parameters)
    {
        //Build Specification
        return (root, criteriaQuery, criteriaBuilder) ->
                generateWhereClause(root, criteriaBuilder, parameters);
    }

    /**
     * Method to generate Predicte which is a representation of the where clause in sql statement.
     */
    private Predicate generateWhereClause(Root<ReportRow> root, CriteriaBuilder criteriaBuilder, Map<String, String> parameters){
        List<Predicate> predicates = new ArrayList<>();
        for (Map.Entry<String, String> entry : parameters.entrySet()) {
            Predicate predicate = criteriaBuilder.equal(criteriaBuilder.lower(root.get(entry.getKey().toLowerCase())), entry.getValue().toLowerCase());
            predicates.add(predicate);
        }
        return criteriaBuilder.and(predicates.toArray(Predicate[]::new));
    }


    /**
     * Method to validate API request params. The list provided to the API is compared against all allowed params stored
     * in an Enum @ReportRequestParamEnum
     * @param params API request params
     * @return true or false
     */
    private boolean validateRequestParam(Map<String, String> params) {
        boolean valid = true;
        List<String> allowed = Stream.of(ReportRequestParamsEnum.values()).map(
                ReportRequestParamsEnum::name).collect( Collectors.toList());
        for (Map.Entry<String, String> entry : params.entrySet()) {
            valid = valid && allowed.contains(entry.getKey().toUpperCase()) && !entry.getValue().isEmpty();
        }
        return valid;
    }
}
