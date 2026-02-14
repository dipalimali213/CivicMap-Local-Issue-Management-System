package com.dips.dao;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;

import com.dips.model.Issue;

public class IssueDao {
	@Autowired
    private HibernateTemplate hibernateTemplate;

    public HibernateTemplate getHibernateTemplate() {
        return hibernateTemplate;
    }

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }

    @Transactional
    public void saveIssue(Issue issue) {
        hibernateTemplate.save(issue);
    }
    
    
    public List<Issue> getAllIssues() {
        return hibernateTemplate.loadAll(Issue.class);
    }
   
  
	
	@Transactional
	public void updateStatus(int id, String status) {
	    Issue issue = hibernateTemplate.get(Issue.class, id);
	    if (issue != null) {
	        issue.setStatus(status);
	        hibernateTemplate.update(issue);
	    }
	}
	
	@Transactional
	public List<Issue> getIssuesByCitizenContactId(String contactId) {
	    List<Issue> allIssues = hibernateTemplate.loadAll(Issue.class);
	    List<Issue> filteredIssues = new ArrayList<Issue>();

	    for (Issue issue : allIssues) {
	        if (issue.getCitizenContactId() == contactId) {
	            filteredIssues.add(issue);
	        }
	    }
	    return filteredIssues;
	}
	@Transactional
	public void updateIssue(Issue issue) {
	    hibernateTemplate.update(issue);
	}

	public Issue getIssueById(int id) {
	    return hibernateTemplate.get(Issue.class, id);
	}


}
