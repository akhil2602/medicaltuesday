package com.mukul.demo.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mukul.demo.spring.dao.patient_medical_details_DAO;
import com.mukul.demo.spring.model.patient;
import com.mukul.demo.spring.model.patient_medical;

@Service("patient_medical_details_service")
public class patient_medical_details_serviceimpl implements patient_medical_details_service {
	@Autowired
	patient_medical_details_DAO c;
	@Transactional
	public List<patient_medical> getPatients_medical() {
		// TODO Auto-generated method stub
		return c.getPatients_medical();
	}

	
		
	//}
	@Transactional
	public patient_medical getPatient_medical(int theId) {
		// TODO Auto-generated method stub
		return c.getPatient_medical(theId);
	}
	@Transactional
	public void savePatient_medical(patient_medical thePatientmedical) {
		// TODO Auto-generated method stub
		c.savePatient_medical(thePatientmedical);
	}

	@Transactional
	public patient getSearch(int theId)
	{
		return c.getSearch(theId);
	}


	@Transactional
	public void updatePatientMedical(int id, String checkin_date, int checkout_date, int treatment_status,
			int doctor_name, int height, int weight, int blood_group, int bed_no) {
		// TODO Auto-generated method stub
		c.updatePatientMedical(id, checkin_date, checkout_date, treatment_status, doctor_name, height, weight, blood_group, bed_no);
	}

	
		
	
	
	
	

}
