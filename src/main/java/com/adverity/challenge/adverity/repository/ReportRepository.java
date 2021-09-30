package com.adverity.challenge.adverity.repository;

import com.adverity.challenge.adverity.model.ReportRow;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.CrudRepository;


/**
 * @author Piotr Lechnio <plechnio@gmail.com>
 */


public interface ReportRepository extends CrudRepository<ReportRow, Long>, JpaSpecificationExecutor{}

