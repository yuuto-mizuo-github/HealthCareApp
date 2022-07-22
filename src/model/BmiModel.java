package model;

import bean.Bmi;

public class BmiModel {
	public void bmi ( Bmi bmi) {
		double weight = bmi.getWeight();
		double height = bmi.getHeight();
		double BMI = weight/(height/100.0*height/100.0);
		BMI = Math.round(BMI * 100) / 100.0;
		
		bmi.setBmi(BMI);
		
		
		
		
		
		
		
		
		
	}

	public void sabun(Bmi bmi) {
		double BMI = bmi.getBmi();
		double sabun = bmi.getSabun();
		double Sabun = BMI-sabun;
		Sabun = Math.round(Sabun * 100) / 100.0;
		
		if (Sabun>0) {
			bmi.setSabun(Sabun);
		}else {
			bmi.setSabun(Sabun);
		}
		
	}
}



