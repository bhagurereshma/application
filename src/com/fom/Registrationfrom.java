package com.fom;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.validator.ValidatorForm;

public class Registrationfrom extends ValidatorForm {
	
	private String firstname;
    private String lastname;
    private String email;
    private String mobile;
    private String address;
    private String username;
    private String password;
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
    
	 public ActionErrors validate(ActionMapping mapping,
	            HttpServletRequest request) {
	        ActionErrors errors = new ActionErrors();
	 
	        if (firstname == null || firstname.length() == 0) {
	            errors.add("firstname", new ActionMessage("firstname.not.entered"));
	        }
	        
	        if (lastname == null || lastname.length() == 0) {
	            errors.add("lastname", new ActionMessage("lastname.not.entered"));
	        }
	 
	        return errors;
	    }
	    public void reset(ActionMapping mapping, HttpServletRequest request) {
	    	firstname="";
	        lastname="";
	        email="";
	        mobile="";
	        address="";
	        username="";
	        password="";
	    }
}