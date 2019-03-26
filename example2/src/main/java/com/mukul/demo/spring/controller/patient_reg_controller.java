package com.mukul.demo.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mukul.demo.spring.model.admin;
import com.mukul.demo.spring.model.customer;
import com.mukul.demo.spring.model.patient;
import com.mukul.demo.spring.service.admin_reg_service;
import com.mukul.demo.spring.service.patient_reg_service;

@Controller 
@RequestMapping("/patient")
public class patient_reg_controller {
	
	@Autowired
	patient_reg_service  patientRegService;
	@GetMapping("/list")
	
public String listpatientReg(Model theModel){
		
		List<patient> thepatients=patientRegService.getPatients();
		theModel.addAttribute("patient", thepatients);
	   return "list-patients";
		//return "demo";
		
	}
	
	@GetMapping("/showForm")
	public String showFormForAdd(Model theModel){
		patient thePatient=new patient();
		theModel.addAttribute("patient", thePatient);
		return "patient_personal_details";
		
	}
	@PostMapping("/savePatient")
	public String savePatient(@ModelAttribute("patient") patient thePatient){
		patientRegService.savePatient(thePatient);
		return "redirect:/patient/list";
	}
	
	@GetMapping("/patientlogin")
	public String loginPatient(@RequestParam("idd") int theId, @RequestParam("em") String em,Model theModel){
			
			patient thepatient=patientRegService.getLogin(theId,em);
			theModel.addAttribute("patient",thepatient);
			return "patient_homepage";
	}
	
	
	@GetMapping("/updatePersonalDetails")
	public String showFormForUpdate(@RequestParam("id") int theId,@RequestParam("aadhar_no") String aadhar_no,@RequestParam("address") int address,@RequestParam("m_no") int m_no,@RequestParam("patient_name") int patient_name,Model theModel){
		System.out.println("update");
		patient thePatient=patientRegService.getPatient(theId);
		System.out.println("akhil");
		theModel.addAttribute("patient", thePatient);
		patientRegService.updatePatient(theId,aadhar_no,address,m_no,patient_name);
		return"patient_personal_details_update";
	}
	
	@GetMapping("/search")
	public String searchPatient(@RequestParam("idd") int theId,Model theModel){
			
			patient thepatient=patientRegService.getSearch(theId);
			theModel.addAttribute("patient",thepatient);
			return "patient_search_PDdetails";
	}
	
	
	@GetMapping("/show1")
	public String showFormForAdd1(Model theModel){
		patient thePatient=new patient();
		theModel.addAttribute("patient", thePatient);
		return "update-form";
		
	}
	
}
