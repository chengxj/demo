package com.demo.service;

import org.springframework.stereotype.Component;
import com.demo.dto.RegistrationDTO;
import com.demo.entity.Registration;

@Component
public class DTOHelper {
	
	public RegistrationDTO buildRegistrationDTO(Registration registration) {
		RegistrationDTO dto = new RegistrationDTO();
		dto.id = registration.getId();
		dto.activities_id = registration.getActivities_id();
		dto.name = registration.getName();
		dto.sex = registration.getSex();
		dto.real_name = registration.getReal_name();
		dto.contact_way = registration.getContact_way();
		dto.emergency_contact = registration.getEmergency_contact();
		dto.emergency_contact_way = registration.getEmergency_contact_way();
		dto.num = registration.getNum();
		dto.equipment_experience_remarks = registration.getEquipment_experience_remarks();
		return dto;
	}
	
	

}
