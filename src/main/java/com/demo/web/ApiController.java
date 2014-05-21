package com.demo.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.demo.dto.ActivitiesDTO;
import com.demo.request.ActivitiesRequest;
import com.demo.service.DemoService;

@Controller
public class ApiController {
	
	 @Autowired
	 private DemoService demoService;	
	 
	 @RequestMapping(value = "/api/search_activities", method = RequestMethod.POST)
	 @ResponseBody
	 public ActivitiesDTO searchActivities(@RequestBody ActivitiesRequest request) {
		  return demoService.searchActivities(request);
	  }
	  
}