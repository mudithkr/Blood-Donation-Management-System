package com.bloodbank;
import com.bloodbank.*;
import java.util.Calendar;
import java.*;
public class Search {
	String City;
	String BloodGroup;
	int day,month,year;
	public boolean BloodDonateEligible(Register obj){
		this.City=obj.getCity();
		this.BloodGroup=obj.getBloodGroup();
		
		//Function Starts now
		Calendar cal=Calendar.getInstance();
		this.day=obj.getDay();
		this.month=obj.getMonth();
		this.year=obj.getDOBYear();
		int d = cal.get(Calendar.DATE);
		int m = cal.get(Calendar.MONTH) + 1;
		int y = cal.get(Calendar.YEAR);

		Calendar calendar1 = Calendar.getInstance();
		Calendar calendar2 = Calendar.getInstance();
		calendar1.set(y,m,d);
		calendar2.set(this.year,this.month,this.day);
		long miliSecondForDate1 = calendar1.getTimeInMillis();
		long miliSecondForDate2 = calendar2.getTimeInMillis();
		long diffInMilis = miliSecondForDate1 - miliSecondForDate2;
		long diffInDays = diffInMilis / (24 * 60 * 60 * 1000);
		if(diffInDays>90)
			return true;
		else 
			return false;
	}
 
}