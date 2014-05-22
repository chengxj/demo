package com.demo.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.demo.dto.ActivitiesDTO;
import com.demo.dto.RegistrationDTO;
import com.demo.dto.RegistrationDetailDTO;
import com.demo.request.ActivitiesRequest;
import com.demo.request.RegistrationDetailRequest;
import com.demo.request.RegistrationRequest;
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
	 
	 @RequestMapping(value = "/api/get_registration_detail", method = RequestMethod.POST)
	 @ResponseBody
	 public RegistrationDetailDTO getRegistrationDetail(@RequestBody RegistrationDetailRequest request){
		 return demoService.getRegistrationDetail(request);
	 }
	 
	 @RequestMapping(value = "/api/add_registration", method = RequestMethod.POST)
	 @ResponseBody
	 public RegistrationDTO addRegistration(@RequestBody RegistrationRequest request){
		 return demoService.addRegistration(request);
	 }
	 
	 @RequestMapping(value = "/api/edit_registration", method = RequestMethod.POST)
	 @ResponseBody
	 public RegistrationDTO editRegistration(@RequestBody RegistrationRequest request){
		 return demoService.editRegistration(request);
	 }
	 
	 @RequestMapping(value = "/api/delete_registration", method = RequestMethod.POST)
	 @ResponseBody
	 public void deleteRegistration(@RequestBody RegistrationRequest request) {
		 demoService.deleteRegistration(request);
	 }	 
	 
}