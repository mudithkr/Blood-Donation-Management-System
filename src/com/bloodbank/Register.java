package com.bloodbank;
import java.lang.String;
public class Register extends Login{
	private String FirstName;
	private String LastName;
	private String mobile_no;
	private String email;
	private String BloodGroup;
	private String City;
	private int DOBMonth;
	private int DOBYear;
	private int DOBDay;
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
	public void setDate(int DOBDay,int DOBMonth,int DOBYear){
		this.DOBDay=DOBDay;
		this.DOBMonth=DOBMonth;
		this.DOBYear=DOBYear;
	}
	public void setmobile(String mobile_no){
		this.mobile_no=mobile_no;
	}
	public String getFirstName(){
		return this.FirstName;
	}
	public String getLastName(){
		return this.LastName;
	}
	public String getmobile(){
		return this.mobile_no;
	}
	public String getemail(){
		return this.email;
	}
	public String getBloodGroup(){
		return this.BloodGroup;
	}
	public String getCity(){
		return this.City;
	}
	public int getDay(){
		return this.DOBDay;
	}
	public int getMonth(){
		return this.DOBMonth;
	}
	public int getDOBYear(){
		return this.DOBYear;
	}
}
