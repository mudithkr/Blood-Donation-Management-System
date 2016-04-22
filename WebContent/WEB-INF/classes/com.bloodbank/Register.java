package com.bloodbank;
import java.util.*;
import java.lang.String;
public class Register {
	private String username;
	private String password;
	private String FirstName;
	private String LastName;
	private String email;
	private String BloodGroup;
	private String City;
	Register(){
		username="null";
		password="null";
		FirstName="null";
		LastName="null";
		email="null";
		BloodGroup="null";
		City="null";
	}
	public void setuser(String username){
		this.username=username;
	}
	public void setpassword(String password){
		this.password=password;
	}
	public void setFirstName(String FirstName){
		this.FirstName=FirstName;
	}
	public void setLastName(String LastName){
		this.LastName=LastName;
	}
	public void setemail(String email){
		this.email=email;
	}
	public void setBloodGroup(String BloodGroup){
		this.BloodGroup=BloodGroup;
	}
	public void setCity(String City){
		this.City=City;
	}
	public String getuser(){
		return username;
	}
	public String getpassword(){
		return password;
	}
	public String getFirstName(){
		return FirstName;
	}
	public String getLastName(){
		return LastName;
	}
	public String getemail(){
		return email;
	}
	public String getBloodGroup(){
		return BloodGroup;
	}
	public String getCity(){
		return City;
	}
}
