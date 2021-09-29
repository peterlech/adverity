package com.adverity.challenge.adverity.repository;

import com.adverity.challenge.adverity.model.ReportRow;
import org.springframework.data.jpa.repository.JpaRepository;



/**
 * @author Piotr Lechnio <p.lechnio@webellian.com>
 */
public interface ReportRepository extends JpaRepository<ReportRow, Long> {
}

