package com.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.DemoDao;
import com.demo.dto.ActivitiesDTO;
import com.demo.request.ActivitiesRequest;

@Service
public class DemoService {
	  
	  @Autowired
	  private DemoDao demoDao;
	  
	  /**
	   * 
	   * @param request
	   * @return
	   */
	  public ActivitiesDTO searchActivities(ActivitiesRequest request) {
		  ActivitiesDTO activitiesDTO = new ActivitiesDTO();		  
		  activitiesDTO.activities = demoDao.searchActivities(request);		  
		  activitiesDTO.num = demoDao.getSearchActivitiesCount(request.searchTerm);		  
		  return activitiesDTO;
	  }
  
	  
}
