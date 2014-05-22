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
public class Registration implements Serializable, DBObject {
	
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
	
	/**
	 * @return the id
	 */
	public Long getId() {
		return id;
	}
	
	/**
	 * @param id the id to set
	 */
	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * @return the activities_id
	 */
	public Long getActivities_id() {
		return activities_id;
	}
	/**
	 * @param activities_id the activities_id to set
	 */
	public void setActivities_id(Long activities_id) {
		this.activities_id = activities_id;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the sex
	 */
	public SexEnum getSex() {
		return sex;
	}
	/**
	 * @param sex the sex to set
	 */
	public void setSex(SexEnum sex) {
		this.sex = sex;
	}
	/**
	 * @return the real_name
	 */
	public String getReal_name() {
		return real_name;
	}
	/**
	 * @param real_name the real_name to set
	 */
	public void setReal_name(String real_name) {
		this.real_name = real_name;
	}
	/**
	 * @return the contact_way
	 */
	public String getContact_way() {
		return contact_way;
	}
	/**
	 * @param contact_way the contact_way to set
	 */
	public void setContact_way(String contact_way) {
		this.contact_way = contact_way;
	}
	/**
	 * @return the emergency_contact
	 */
	public String getEmergency_contact() {
		return emergency_contact;
	}
	/**
	 * @param emergency_contact the emergency_contact to set
	 */
	public void setEmergency_contact(String emergency_contact) {
		this.emergency_contact = emergency_contact;
	}
	/**
	 * @return the emergency_contact_way
	 */
	public String getEmergency_contact_way() {
		return emergency_contact_way;
	}
	/**
	 * @param emergency_contact_way the emergency_contact_way to set
	 */
	public void setEmergency_contact_way(String emergency_contact_way) {
		this.emergency_contact_way = emergency_contact_way;
	}
	/**
	 * @return the num
	 */
	public int getNum() {
		return num;
	}
	/**
	 * @param num the num to set
	 */
	public void setNum(int num) {
		this.num = num;
	}
	/**
	 * @return the equipment_experience_remarks
	 */
	public String getEquipment_experience_remarks() {
		return equipment_experience_remarks;
	}
	/**
	 * @param equipment_experience_remarks the equipment_experience_remarks to set
	 */
	public void setEquipment_experience_remarks(String equipment_experience_remarks) {
		this.equipment_experience_remarks = equipment_experience_remarks;
	}
	
}
