package com.adverity.challenge.adverity.model;

import lombok.Data;

import java.util.List;

/**
 *
 * Application will always return this objects of these class.
 *
 * @author Piotr Lechnio <plechnio@gmail.com>
 */
@Data
public class ResponseDTO {
    private String message;
    private String code;
    private List<ReportRow> data;

    public ResponseDTO(String message, String code, List<ReportRow> data) {
        this.message = message;
        this.code = code;
        this.data = data;
    }
}
