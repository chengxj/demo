package com.demo.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WebController {
	
	  @RequestMapping(value = "/demo")
	  public String defaultCallback(Model model) {
		  return "activities";
	  }
	  
	  @RequestMapping(value = "/demo/registration/{activities_id}")
	  public String productDetails(@PathVariable String activities_id, Model model) {
	    model.addAttribute("activities_id", activities_id);
	    return "registration";
	  }

}