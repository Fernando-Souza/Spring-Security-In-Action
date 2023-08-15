package com.estudo.ch04.controlers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class HelloControler {

    @GetMapping("/hello")
    public String Hello(){

        return "Hello";
    }
    
}
