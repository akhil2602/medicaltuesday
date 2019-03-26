package com.mukul.demo.spring.dao;

import java.util.List;

import com.mukul.demo.spring.model.admin;
import com.mukul.demo.spring.model.patient;

public interface patient_reg_DAO {

	public List<patient> getPatients();

	public void savePatient(patient thePatient);

	public patient getPatient(int theId);
	
	public patient getLogin(int theId, String em);
	
	public patient getSearch(int theId);

	public void updatePatient(int id, String aadhar_no, int address, int m_no, int patient_name);
	
	

}
