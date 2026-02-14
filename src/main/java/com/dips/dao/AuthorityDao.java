package com.dips.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.dips.model.Authority;

@Component
public class AuthorityDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	@Transactional
	public void addAuthority(Authority obj)
	{
		hibernateTemplate.save(obj);
		
	}
	
	public List<Authority> getAllAuthorities() {
        return hibernateTemplate.loadAll(Authority.class);
    }

	@Transactional
	public void deleteAuthority(String contact) {
	    Authority authority = this.hibernateTemplate.get(Authority.class, contact);
	    if (authority != null) {
	        this.hibernateTemplate.delete(authority);
	    }
	}
	
	
	public Authority getAuthorityByContact(String contact) {
	    return hibernateTemplate.get(Authority.class, contact);
	}

	
	
	




	

}
