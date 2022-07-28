package model;

import bean.Bmi;

/**
 *  BMIの処理を実行するクラス
 */
public class BmiModel {
	/**
	 * BMIの計算する
	 *  @param weight 計算するweight
	 *  @param height 計算するheight
	 *  @param BMI 追加するBMI情報
	 * 
	 */
	public void bmi ( Bmi bmi) {
		double weight = bmi.getWeight();
		double height = bmi.getHeight();
		double BMI = weight/(height/100.0*height/100.0);
		BMI = Math.round(BMI * 100) / 100.0;
		
		bmi.setBmi(BMI);
		
		
		
		
		
		
		
		
		
	}

	/**
	 * 前のBMIとの差を計算する
	 *  @param BMI 今入力したBMI
	 *  @param sabun 前入力したBMI
	 *  @param Sabun　前のBMIとの差
	 * 
	 */
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



