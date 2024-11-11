package com.textipro.erp.exception;

import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.java.Log;

@RestControllerAdvice
@Log
public class ExceptionsOfTextIPro {

    @ExceptionHandler(value = Exception.class)
    
    public String exceptions(HttpServletRequest httpServletRequest, Exception ex) {
        log.severe("An error occurred while processing the request: " + httpServletRequest.getRequestURI());
        log.severe("Exception: " + ex.getMessage());
        ex.printStackTrace(); 
        return "Please Try After Some time";
    }
}
