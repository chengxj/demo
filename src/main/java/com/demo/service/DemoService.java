package com.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.demo.dao.CommonDao;
import com.demo.dao.DemoDao;
import com.demo.dto.ActivitiesDTO;
import com.demo.dto.RegistrationDTO;
import com.demo.dto.RegistrationDetailDTO;
import com.demo.entity.Registration;
import com.demo.request.ActivitiesRequest;
import com.demo.request.RegistrationDetailRequest;
import com.demo.request.RegistrationRequest;

@Service
public class DemoService {
	  
	  @Autowired
	  private DemoDao demoDao;
	  
	  @Autowired
	  private CommonDao commonDao;
	  
	  @Autowired
	  private DTOUtil dtoUtil;
	  
	  /**
	   * 
	   * @param request
	   * @return
	   */
	  public ActivitiesDTO searchActivities(ActivitiesRequest request) {
		  ActivitiesDTO dto = new ActivitiesDTO();		  
		  dto.activities = demoDao.searchActivities(request.searchTerm, request.index);		  
		  dto.num = demoDao.getSearchActivitiesCount(request.searchTerm);		  
		  return dto;
	  }
	  
	  /**
	   * 
	   * @param request
	   * @return
	   */
	  public RegistrationDetailDTO getRegistrationDetail(RegistrationDetailRequest request){
		  RegistrationDetailDTO dto = new RegistrationDetailDTO();
		  dto.activities = demoDao.getActivitiesById(request.activities_id);
		  dto.registrations = demoDao.getRegistrations(request.activities_id);		  
		  return dto;
	  }
	  
	  /**
	   * 
	   * @param request
	   * @return
	   */
	  public RegistrationDTO addRegistration(RegistrationRequest request){
		  Registration registration = new Registration();
		  registration.setActivities_id(request.activities_id);
		  registration.setName(request.name);
		  registration.setSex(request.sex);
		  registration.setReal_name(request.real_name);
		  registration.setContact_way(request.contact_way);
		  registration.setEmergency_contact(request.emergency_contact);
		  registration.setEmergency_contact_way(request.emergency_contact_way);
		  registration.setNum(request.num);
		  registration.setEquipment_experience_remarks(request.equipment_experience_remarks);
		  commonDao.saveDBOject(registration);
		  return dtoUtil.buildRegistrationDTO(registration);
	  }
  
	  /**
	   * 
	   * @param request
	   * @return
	   */
	  public RegistrationDTO editRegistration(RegistrationRequest request) {		  
		  Registration registration = demoDao.getRegistrationById(request.id, request.activities_id);
		  registration.setName(request.name);
		  registration.setSex(request.sex);
		  registration.setReal_name(request.real_name);
		  registration.setContact_way(request.contact_way);
		  registration.setEmergency_contact(request.emergency_contact);
		  registration.setEmergency_contact_way(request.emergency_contact_way);
		  registration.setNum(request.num);
		  registration.setEquipment_experience_remarks(request.equipment_experience_remarks);
		  commonDao.saveDBOject(registration);
		  return dtoUtil.buildRegistrationDTO(registration);
	  }
	  
	  /**
	   * 
	   * @param request
	   * @return
	   */
	  public void deleteRegistration(RegistrationRequest request) {
		  Registration registration = demoDao.getRegistrationById(request.id, request.activities_id);
		  commonDao.deleteDBObject(registration);
	  }
	  
}
