package com.dips.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;


@Table(name = "citizens")
@Entity
@Component
public class Citizen {
	@Id
	private String contact;

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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
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
	private String name;
    private String address;
    private String email;
    private String password;

	public Citizen(String contact, String name, String address, String email, String password) {
		super();
		this.contact = contact;
		this.name = name;
		this.address = address;
		this.email = email;
		this.password = password;
	}
	public Citizen() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Citizen [contact=" + contact + ", name=" + name + ", address=" + address + ", email=" + email
				+ ", password=" + password + "]";
	}
    
    

}
