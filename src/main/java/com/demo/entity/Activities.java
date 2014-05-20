package com.demo.entity;

import java.util.Date;

public class Activities {
	
	public Long id;// 主键
	public String title;// 标题	
	public ActivityTypeEnum typeEnum;// 类型
	public String ScenicSpots;// 景点
	public String departure;// 出发地
	public String destination;// 目的地
	public String leader;// 领队
	public Date startDate;// 出发时间
	public Date endDate;// 返回时间

}
