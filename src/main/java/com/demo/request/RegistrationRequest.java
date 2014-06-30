package com.demo.request;

import com.demo.entity.SexEnum;

public class RegistrationRequest {
	
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
