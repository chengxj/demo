package com.demo.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "registration")
public class Registration  implements Serializable {
	
	@Id
	@GeneratedValue
	private Long id;// 主键
	private Long activities_id;
	private String name;// 人名
	@Enumerated(EnumType.STRING)
	private SexEnum sex = SexEnum.MAN;// 性别
	private String real_name;// 真实姓名
	private String contact_way;// 联系方式
	private String emergency_contact;// 紧急联系人
	private String emergency_contact_way;// 紧急联系电话
	private int num;// 人数
	private String equipment_experience_remarks;// 装备|户外经验|备注
	
}
