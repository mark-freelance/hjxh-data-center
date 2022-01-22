package com.mulaobao.administration.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

//@RestControllerAdvice
public class CustomExtHandler {
    private static final Logger LOG = LoggerFactory.getLogger(CustomExtHandler.class);

 //   @ExceptionHandler(value=Exception.class)
    Object handleException(Exception e, HttpServletRequest request){
                 LOG.error("url {}, msg {}",request.getRequestURL(), e.getMessage());
        HashMap<String, Object> map = new HashMap<>();
        map.put("code", 500);
        map.put("url", request.getRequestURL());
        return map;
            }
}
