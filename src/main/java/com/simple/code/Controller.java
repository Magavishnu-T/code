package com.simple.code;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {

    @GetMapping("/display")
    public String display() {
        return "Hello World!!!";
    }
}
