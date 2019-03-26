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

import com.mukul.demo.spring.model.patient;
import com.mukul.demo.spring.model.patient_medical;
import com.mukul.demo.spring.service.patient_medical_details_service;


@Controller 
@RequestMapping("/patient_medical")
public class patient_medical_details_controller {
	
	@Autowired
	patient_medical_details_service  patientMedicalDetailsService;
	@GetMapping("/list")
	
public String listpatientMedicalDetails(Model theModel){
		
		List<patient_medical> thepatientsMedical=patientMedicalDetailsService.getPatients_medical();
		theModel.addAttribute("patient_medical", thepatientsMedical);
	   return "list-patients_medical";
		//return "demo";
		
	}
	
	@GetMapping("/showForm")
	public String showFormForAdd(Model theModel){
		patient_medical thePatientMedical=new patient_medical();
		theModel.addAttribute("patient_medical", thePatientMedical);
		return "patient_medical_details";
		
	}
	@PostMapping("/savePatient_medical")
	public String savePatient_medical(@ModelAttribute("patient_medical") patient_medical thePatientmedical){
		patientMedicalDetailsService.savePatient_medical(thePatientmedical);
		return "redirect:/patient_medical/list";
	}
	
	@GetMapping("/search")
	public String searchPatient(@RequestParam("idd") int theId,Model theModel){
			
			patient thepatient=patientMedicalDetailsService.getSearch(theId);
			theModel.addAttribute("patient",thepatient);
			return "patient_search_PDdetails";
	}
	
	
	@GetMapping("/updateMedicalDetails")
	public String showFormForUpdate(@RequestParam("id") int theId,@RequestParam("checkin_date") String checkin_date,@RequestParam("checkout_date") int checkout_date,@RequestParam("treatment_status") int treatment_status,@RequestParam("doctor_name") int doctor_name,@RequestParam("height") int height,@RequestParam("weight") int weight,@RequestParam("blood_group") int blood_group,@RequestParam("bed_no") int bed_no,Model theModel){
		System.out.println("update");
		patient_medical thePatient=patientMedicalDetailsService.getPatient_medical(theId);
		System.out.println("akhil");
		theModel.addAttribute("patient_medical", thePatient);
		patientMedicalDetailsService.updatePatientMedical(theId,checkin_date,checkout_date,treatment_status,doctor_name,height,weight,blood_group,bed_no);
		return"patient_personal_details_update";
	}
	
	@GetMapping("/show1")
	public String showFormForAdd1(Model theModel){
		patient_medical thePatient=new patient_medical();
		theModel.addAttribute("patient_medical", thePatient);
		return "update-medical-form";
		
	}
	

}
