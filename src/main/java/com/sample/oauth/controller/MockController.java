package com.sample.oauth.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class MockController{
    /**
     * For getting dummy infos.
     * Authentication not required.
     *
     * @return list of dummy values
     */
    @GetMapping("/dummy")
    public ResponseEntity<List<String>> getDummyInfo(){
        return ResponseEntity.ok(List.of("Dummy_1 ","Dummy_2","Dummy_3"));
    }

    /**
     * For getting real infos.
     * User must be authenticated.
     *
     * @return list of real values
     */
    @GetMapping("/real")
    public ResponseEntity<List<String>> getRealInfo(){
        return ResponseEntity.ok(List.of("Real_1","Real_2","Real_3"));
    }
}
