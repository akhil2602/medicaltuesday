package com.mukul.demo.spring.service;

import java.util.List;

import com.mukul.demo.spring.model.patient;
import com.mukul.demo.spring.model.patient_medical;

public interface patient_medical_details_service {
	
	public List<patient_medical> getPatients_medical();

	public void savePatient_medical(patient_medical thePatientmedical);

	public patient_medical getPatient_medical(int theId);

	public patient getSearch(int theId);

	public void updatePatientMedical(int theId, String checkin_date, int checkout_date, int treatment_status,
			int doctor_name, int height, int weight, int blood_group, int bed_no);

}
