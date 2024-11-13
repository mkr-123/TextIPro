package com.textipro.erp.exception;

import java.util.NoSuchElementException;

import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.java.Log;

@RestControllerAdvice
@Log
public class ExceptionsOfTextIPro {

	@ExceptionHandler(value =NoSuchElementException.class)
	public String noSuchElementFound(HttpServletRequest httpServletRequest, NoSuchElementException ex) {
		log.severe("An error occurred while processing the request: " + httpServletRequest.getRequestURI());
		log.severe("Exception: " + ex.getMessage());
		log.log(java.util.logging.Level.SEVERE, "Exception stack trace: ", ex);
		return "not there";
	}
	
	
    @ExceptionHandler(value = Exception.class)
    public String exceptions(HttpServletRequest httpServletRequest, Exception ex) {
        log.severe("An error occurred while processing the request: " + httpServletRequest.getRequestURI());
        log.severe("Exception: " + ex.getMessage());
        log.log(java.util.logging.Level.SEVERE, "Exception stack trace: ", ex);
        return "Please Try After Some time";
    }
}
