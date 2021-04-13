package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DemoController {
	@GetMapping({ "/jspFile" })
	public String welcome() {
		System.out.println("democontroller");
		return "jspFile";
	}
}
