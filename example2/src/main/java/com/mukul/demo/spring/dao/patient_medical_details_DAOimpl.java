package com.mukul.demo.spring.dao;

import java.util.List;

import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.CriteriaUpdate;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mukul.demo.spring.model.patient;
import com.mukul.demo.spring.model.patient_medical;

@Repository("patient_medical_details_DAO")
public class patient_medical_details_DAOimpl implements patient_medical_details_DAO {

	@Autowired
	SessionFactory sessionFactory;
	public List<patient_medical> getPatients_medical() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		CriteriaBuilder cb=session.getCriteriaBuilder();
		CriteriaQuery<patient_medical> cq=cb.createQuery(patient_medical.class);
		Root<patient_medical> root=cq.from(patient_medical.class);
		cq.select(root);
		Query query=session.createQuery(cq);
		return query.getResultList();
	}

	public void savePatient_medical(patient_medical thePatientmedical) {
		// TODO Auto-generated method stub
Session currentSession=sessionFactory.getCurrentSession();
		
		currentSession.saveOrUpdate(thePatientmedical);
		
	}

	public patient_medical getPatient_medical(int theId) {
		// TODO Auto-generated method stub
		Session currentSession=sessionFactory.getCurrentSession();
		patient_medical thePatientmedical=currentSession.get(patient_medical.class, theId);
		return thePatientmedical;
	}

	public patient getSearch(int theId)
	{
Session session=sessionFactory.getCurrentSession();
		
		CriteriaBuilder cb=session.getCriteriaBuilder();
		CriteriaQuery<patient> cq=cb.createQuery(patient.class);
		Root<patient> root=cq.from(patient.class);
		cq.select(root);
		cq.where(cb.equal(root.get("user_id"),theId));
		TypedQuery<patient> typed=session.createQuery(cq);
		try{
			return typed.getSingleResult();
		}
		catch(Exception e)
		{
			System.out.println("NO search found");
			return null;
		}
		
	}

	public void updatePatientMedical(int id, String checkin_date, int checkout_date, int treatment_status,
			int doctor_name, int height, int weight, int blood_group, int bed_no) {
		
		
		// TODO Auto-generated method stub

		Session session=sessionFactory.getCurrentSession();
		CriteriaBuilder cb=session.getCriteriaBuilder();
		CriteriaUpdate<patient_medical> cq=cb.createCriteriaUpdate(patient_medical.class);
		
		Root<patient_medical> e = cq.from(patient_medical.class);
		
		cq.set("checkin_date", checkin_date);
		cq.set("checkout_date",checkout_date);
		cq.set("treatment_status",treatment_status);
		cq.set("doctor_name",doctor_name);
		cq.set("height",height);
		cq.set("weight",weight);
		cq.set("blood_group",blood_group);
		cq.set("bed_no",bed_no);
		//cq.set("address",address);
		cq.where(cb.equal(e.get("id"), id));
		
		
		TypedQuery<Package> typed = session.createQuery(cq);
		
		typed.executeUpdate();
		
		
	}
	

	

}
