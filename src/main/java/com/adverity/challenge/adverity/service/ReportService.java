package com.adverity.challenge.adverity.service;

import com.adverity.challenge.adverity.model.ReportDTO;
import com.adverity.challenge.adverity.model.RequestDTO;
import java.util.ArrayList;

/**
 * @author Piotr Lechnio <p.lechnio@webellian.com>
 */


public interface ReportService {

  ArrayList<ReportDTO> getData(RequestDTO requestDTO);
}
