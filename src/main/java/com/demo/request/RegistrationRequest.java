package com.demo.request;

import com.demo.entity.SexEnum;

public class RegistrationRequest {
	
	public Long id;// 主键
	public Long activities_id;
	public String name;// 人名
	public SexEnum sex = SexEnum.MAN;// 性别
	public String real_name;// 真实姓名
	public String contact_way;// 联系方式
	public String emergency_contact;// 紧急联系人
	public String emergency_contact_way;// 紧急联系电话
	public int num;// 人数
	public String equipment_experience_remarks;// 装备|户外经验|备注
	
}
