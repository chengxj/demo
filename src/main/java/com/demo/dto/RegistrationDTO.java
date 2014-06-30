package com.demo.dto;

import com.demo.entity.SexEnum;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;

@JsonIgnoreProperties(ignoreUnknown = true)
@JsonInclude(JsonInclude.Include.NON_NULL)
public class RegistrationDTO {
	
	public Long id;
	public Long activities_id;
	public String name;
	public SexEnum sex = SexEnum.MAN;
	public String real_name;
	public String contact_way;
	public String emergency_contact;
	public String emergency_contact_way;
	public int num;
	public String equipment_experience_remarks;
	
}
