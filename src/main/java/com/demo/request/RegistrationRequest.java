package com.demo.request;

import com.demo.entity.SexEnum;

public class RegistrationRequest {
	
	public Long id;// ����
	public Long activities_id;
	public String name;// ����
	public SexEnum sex = SexEnum.MAN;// �Ա�
	public String real_name;// ��ʵ����
	public String contact_way;// ��ϵ��ʽ
	public String emergency_contact;// ������ϵ��
	public String emergency_contact_way;// ������ϵ�绰
	public int num;// ����
	public String equipment_experience_remarks;// װ��|���⾭��|��ע
	
}
