package com.demo.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;

@Entity
@Table(name = "activities")
public class Activities  implements Serializable, DBObject{
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue
	private Long id;// 主键
	private String title;// 标题	
	@Enumerated(EnumType.STRING)
	private ActivityTypeEnum type_enum = ActivityTypeEnum.OTHER;// 类型
	private String scenic_spots;// 景点
	private String departure;// 出发地
	private String destination;// 目的地
	private String leader;// 领队
	@Temporal(javax.persistence.TemporalType.DATE)
	private Date start_date;// 出发时间
	@Temporal(javax.persistence.TemporalType.DATE)
	private Date end_date;// 返回时间
	
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
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}
	/**
	 * @param title the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}
	/**
	 * @return the type_enum
	 */
	public ActivityTypeEnum getType_enum() {
		return type_enum;
	}
	/**
	 * @param type_enum the type_enum to set
	 */
	public void setType_enum(ActivityTypeEnum type_enum) {
		this.type_enum = type_enum;
	}
	/**
	 * @return the scenic_spots
	 */
	public String getScenic_spots() {
		return scenic_spots;
	}
	/**
	 * @param scenic_spots the scenic_spots to set
	 */
	public void setScenic_spots(String scenic_spots) {
		this.scenic_spots = scenic_spots;
	}
	/**
	 * @return the departure
	 */
	public String getDeparture() {
		return departure;
	}
	/**
	 * @param departure the departure to set
	 */
	public void setDeparture(String departure) {
		this.departure = departure;
	}
	/**
	 * @return the destination
	 */
	public String getDestination() {
		return destination;
	}
	/**
	 * @param destination the destination to set
	 */
	public void setDestination(String destination) {
		this.destination = destination;
	}
	/**
	 * @return the leader
	 */
	public String getLeader() {
		return leader;
	}
	/**
	 * @param leader the leader to set
	 */
	public void setLeader(String leader) {
		this.leader = leader;
	}
	/**
	 * @return the start_date
	 */
	public Date getStart_date() {
		return start_date;
	}
	/**
	 * @param start_date the start_date to set
	 */
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	/**
	 * @return the end_date
	 */
	public Date getEnd_date() {
		return end_date;
	}
	/**
	 * @param end_date the end_date to set
	 */
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}

}
