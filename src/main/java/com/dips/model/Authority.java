package com.dips.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "authorities")
@Component
public class Authority {
	@Id
    private String contact;
    private String name;
    private String department;
    private String email;
    private String password;

    // Getters and Setters
    public String getContact() {
        return contact;
    }
    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public String getDepartment() {
        return department;
    }
    public void setDepartment(String department) {
        this.department = department;
    }

    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
       
    }
	public Authority(String contact, String name, String department, String email, String password) {
		super();
		this.contact = contact;
		this.name = name;
		this.department = department;
		this.email = email;
		this.password = password;
	}
	public Authority() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Authority [contact=" + contact + ", name=" + name + ", department=" + department + ", email=" + email
				+ ", password=" + password + "]";
	}
    
	
}
