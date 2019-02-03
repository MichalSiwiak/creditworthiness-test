package net.coffeecoding.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


@Controller
public class AppController {


    @GetMapping("/error")
    public String showErrorPage() {

        return "error-page";
    }

    @GetMapping("/demo")
    public String getDemo() {

        return "creditworthiness-test-form";
    }


    public double roundDouble2precision(double value, int places) {
        if (places < 0)
            throw new IllegalArgumentException();
        long factor = (long) Math.pow(10, places);
        value = value * factor;
        long tmp = Math.round(value);
        return (double) tmp / factor;
    }

}