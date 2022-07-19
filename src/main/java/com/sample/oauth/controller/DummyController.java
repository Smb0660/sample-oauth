package com.sample.oauth.controller;


import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class DummyController {

    @GetMapping("/dummy")
    public ResponseEntity<List<String>> getDummyInfo(){
        return ResponseEntity.ok(List.of("Dummy 1 ","Dummy 2","Dummy 3"));
    }

    @GetMapping("/real")
    public ResponseEntity<List<String>> getRealInfo(){
        return ResponseEntity.ok(List.of("Razmik","Smbat"));
    }
}
