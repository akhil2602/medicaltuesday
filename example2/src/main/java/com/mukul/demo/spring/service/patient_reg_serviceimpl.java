package com.mukul.demo.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mukul.demo.spring.dao.admin_reg_DAO;
import com.mukul.demo.spring.dao.patient_reg_DAO;
import com.mukul.demo.spring.model.patient;
@Service("patient_reg_service")
public class patient_reg_serviceimpl implements patient_reg_service {

	@Autowired
	patient_reg_DAO c;	
	@Transactional
	public List<patient> getPatients() {
		// TODO Auto-generated method stub
		return c.getPatients();
	}
	@Transactional
	public void savePatient(patient thePatient) {
		// TODO Auto-generated method stub
		c.savePatient(thePatient);
	}
	@Transactional
	public patient getPatient(int theId) {
		// TODO Auto-generated method stub
		return c.getPatient(theId);
	}
	@Transactional
	public patient getLogin(int theId, String em) {
		
	
	
		return c.getLogin(theId,em);
		
	}
	@Transactional
	public patient getSearch(int theId)
	{
		return c.getSearch(theId);
	}
	
	@Transactional
	public void updatePatient(int id, String aadhar_no, int address, int m_no, int patient_name) {
		// TODO Auto-generated method stubc
		c.updatePatient(id,aadhar_no,address,m_no,patient_name);
		
	}
	
	
	
	
	
}
