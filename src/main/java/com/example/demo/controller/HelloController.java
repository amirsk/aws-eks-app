package com.example.demo.controller;

import lombok.extern.java.Log;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Log
public class HelloController implements org.openapitools.api.HelloApi {

    @Override
    public ResponseEntity<String> helloGet() {
        log.info("GET Hello API is triggered.");
        return ResponseEntity.ok("Hello");
    }

}
