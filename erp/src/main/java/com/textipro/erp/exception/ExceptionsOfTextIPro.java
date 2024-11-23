package com.textipro.erp.exception;

import java.sql.SQLIntegrityConstraintViolationException;
import java.util.HashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.stream.Collectors;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.ConstraintViolation;
import jakarta.validation.ConstraintViolationException;
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
	 @ExceptionHandler(SQLIntegrityConstraintViolationException.class)
	    public ResponseEntity<String> handleSQLIntegrityConstraintViolation(SQLIntegrityConstraintViolationException ex) {
	        String message = "A unique constraint violation occurred: " + ex.getMessage();
	        // You can customize the response here, or even return a custom object instead of a plain string.
	        return new ResponseEntity<>(message, HttpStatus.BAD_REQUEST);
	    }
	@ExceptionHandler(value=ConstraintViolationException.class)
	public String validation(HttpServletRequest httpServletRequest,ConstraintViolationException cx) {
		log.severe("An error occurred while processing the request: " + httpServletRequest.getRequestURI());
		log.log(java.util.logging.Level.SEVERE, "Exception stack trace: ", cx.getStackTrace());
		String errorMessage = cx.getConstraintViolations().stream()
                .map(ConstraintViolation::getMessage) 
                .collect(Collectors.joining(", "));
		return errorMessage;
	}
	
    @ExceptionHandler(value = Exception.class)
    public String exceptions(HttpServletRequest httpServletRequest, Exception ex) {
        log.severe("An error occurred while processing the request: " + httpServletRequest.getRequestURI());
        log.severe("Exception: " + ex.getMessage());
        log.log(java.util.logging.Level.SEVERE, "Exception stack trace: ", ex);
        return "Please Try After Some time";
    }
}
