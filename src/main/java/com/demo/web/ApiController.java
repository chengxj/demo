package com.demo.web;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.demo.dto.UsersDTO;
import com.demo.entity.User;
import com.demo.request.UserRequest;
import com.demo.service.DemoService;

@Controller
public class ApiController {
	
	 @Autowired
	 private DemoService demoService;	
	
	 @RequestMapping(value = "/api/search_users", method = RequestMethod.POST)
	 @ResponseBody
	 public UsersDTO searchUsers(@RequestBody UserRequest request) {
		  UsersDTO usersDTO = new UsersDTO();
		  List<User> users = new ArrayList<User>();
		  User obj_01 = new User();
		  obj_01.userId = request.userId + "_01";
		  obj_01.userName = request.userName + "_01";
		  obj_01.phone = request.phone + "_01";
		  obj_01.email = request.email + "_01";
		  obj_01.remarks = request.remarks + "_01";
		  users.add(obj_01);
		  User obj_02 = new User();
		  obj_02.userId = request.userId + "_02";
		  obj_02.userName = request.userName + "_02";
		  obj_02.phone = request.phone + "_02";
		  obj_02.email = request.email + "_02";
		  obj_02.remarks = request.remarks + "_02";		  
		  users.add(obj_02);
		  usersDTO.count = 2;
		  usersDTO.users = users;
		  return usersDTO;
	  }
	  
}