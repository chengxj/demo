package com.demo.dto;

import java.util.List;
import com.demo.entity.Activities;
import com.demo.entity.Registration;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;

@JsonIgnoreProperties(ignoreUnknown = true)
@JsonInclude(JsonInclude.Include.NON_NULL)
public class RegistrationDTO {
	
	public Activities activities;
	public List<Registration> registrationForm;
	public int num;

}
