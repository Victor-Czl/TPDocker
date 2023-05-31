package com.example.demo2;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("api")
public class WebService {

    @GetMapping("/message")
    String getMessage() {
        return "<p>HelloWorld</p>";
    }
}
