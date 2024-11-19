package com.textipro.erp.exception;

import java.util.HashMap;
import java.util.Map;
import java.util.NoSuchElementException;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.java.Log;

@RestControllerAdvice
@Log
public class ExceptionsOfTextIPro {
	
	 @ExceptionHandler(IllegalArgumentException.class)
	 @ResponseBody
	    public ResponseEntity<Map<String, String>> handleIllegalArgumentException(IllegalArgumentException ex) {
	        Map<String, String> errorResponse = new HashMap<>();
	        errorResponse.put("error", "Invalid request parameter");
	        errorResponse.put("message", ex.getMessage());

	        return ResponseEntity.badRequest().body(errorResponse);
	    }

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
