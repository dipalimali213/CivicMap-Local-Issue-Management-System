package com.dips.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;

import com.dips.model.Authority;
import com.dips.model.Citizen;

public class CitizenDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	@Transactional
    public void addCitizen(Citizen citizen) {
        hibernateTemplate.save(citizen);
    }

	public Citizen getCitizenByContact(String contact) {
		// TODO Auto-generated method stub 	    
		return hibernateTemplate.get(Citizen.class, contact);

	}
	
	public List<Citizen> getAllCitizens() {
	    return hibernateTemplate.loadAll(Citizen.class);
	}


    
}
