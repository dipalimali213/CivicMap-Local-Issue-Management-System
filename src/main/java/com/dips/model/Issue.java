package com.dips.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "issues")
@Component
public class Issue {
	@Id
    private int id;
    private String citizenContactId;
    private String issueType;
    private String latitude;
    private String longitude;
    private String description;
    private String date;
	private String status;

    public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCitizenContactId() {
		return citizenContactId;
	}
	public void setCitizenContactId(String citizenContactId) {
		this.citizenContactId = citizenContactId;
	}
	public String getIssueType() {
		return issueType;
	}
	public void setIssueType(String issueType) {
		this.issueType = issueType;
	}
	public String getLatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	public String getLongitude() {
		return longitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Issue(int id, String citizenContactId, String issueType, String latitude, String longitude,
			String description, String date, String status) {
		super();
		this.id = id;
		this.citizenContactId = citizenContactId;
		this.issueType = issueType;
		this.latitude = latitude;
		this.longitude = longitude;
		this.description = description;
		this.date = date;
		this.status = status;
	}
	public Issue() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Issue [id=" + id + ", citizenContactId=" + citizenContactId + ", issueType=" + issueType + ", latitude="
				+ latitude + ", longitude=" + longitude + ", description=" + description + ", date=" + date
				+ ", status=" + status + "]";
	}
	




}
