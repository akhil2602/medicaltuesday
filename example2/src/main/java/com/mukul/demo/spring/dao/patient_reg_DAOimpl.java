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

import com.mukul.demo.spring.model.admin;
import com.mukul.demo.spring.model.patient;
@Repository("patient_reg_DAO")
public class patient_reg_DAOimpl implements patient_reg_DAO {

	@Autowired
	SessionFactory sessionFactory;
	public List<patient> getPatients() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		CriteriaBuilder cb=session.getCriteriaBuilder();
		CriteriaQuery<patient> cq=cb.createQuery(patient.class);
		Root<patient> root=cq.from(patient.class);
		cq.select(root);
		Query query=session.createQuery(cq);
		return query.getResultList();

	}

	public void savePatient(patient thePatient) {
		// TODO Auto-generated method stub
Session currentSession=sessionFactory.getCurrentSession();
		
		currentSession.saveOrUpdate(thePatient);
		
	}

	public patient getPatient(int theId) {
		// TODO Auto-generated method stub
		Session currentSession=sessionFactory.getCurrentSession();
		patient thePatient=currentSession.get(patient.class, theId);
		return thePatient;
		
	}
	
	public patient getLogin(int theId, String em) {
	
	

Session session=sessionFactory.getCurrentSession();
		
		CriteriaBuilder cb=session.getCriteriaBuilder();
		CriteriaQuery<patient> cq=cb.createQuery(patient.class);
		Root<patient> root=cq.from(patient.class);
		cq.select(root);
		cq.where(cb.equal(root.get("user_id"),theId),(cb.equal(root.get("m_no"), em)));
		TypedQuery<patient> typed=session.createQuery(cq);
		try{
			return typed.getSingleResult();
		}
		catch(Exception e)
		{
			System.out.println("exc....");
			return null;
		}
		
		
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
	
	
	
	
	
	
	

	public void updatePatient(int id, String aadhar_no, int address, int m_no, int patient_name) {
		// TODO Auto-generated method stub
		
		Session session=sessionFactory.getCurrentSession();
		CriteriaBuilder cb=session.getCriteriaBuilder();
		CriteriaUpdate<patient> cq=cb.createCriteriaUpdate(patient.class);
		
		Root<patient> e = cq.from(patient.class);
		
		cq.set("aadhar_no", aadhar_no);
		cq.set("address",address);
		cq.set("m_no",m_no);
		cq.set("patient_name",patient_name);
		//cq.set("address",address);
		cq.where(cb.equal(e.get("id"), id));
		
		
		TypedQuery<Package> typed = session.createQuery(cq);
		
		typed.executeUpdate();
		
	}

	
	

}
