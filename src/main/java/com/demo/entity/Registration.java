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
	private Long id;// ����
	private Long activities_id;
	private String name;// ����
	@Enumerated(EnumType.STRING)
	private SexEnum sex = SexEnum.MAN;// �Ա�
	private String real_name;// ��ʵ����
	private String contact_way;// ��ϵ��ʽ
	private String emergency_contact;// ������ϵ��
	private String emergency_contact_way;// ������ϵ�绰
	private int num;// ����
	private String equipment_experience_remarks;// װ��|���⾭��|��ע
	
}
