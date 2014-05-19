package com.demo.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WebController {
	
	  @RequestMapping(value = "/")
	  public String defaultCallback(Model model) {
		  return "index";
	  }

}