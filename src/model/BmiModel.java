package model;

import bean.Bmi;

public class BmiModel {
	public void bmi ( Bmi bmi) {
		double weight = bmi.getWeight();
		double height = bmi.getHeight();
		double BMI = weight/(height/100.0*height/100.0);
		bmi.setBmi(BMI);
		
		
		
		
		
		
		
		
		
	}

	public double sabun(Bmi bmi, double maebmi) {
		double BMI = bmi.getBmi();
		double sabun = maebmi-BMI;
		
		double sippai = -1;
		if (sabun<0) {
			return sabun;
		}else {
			return  sippai;
		}
		
	}
}



