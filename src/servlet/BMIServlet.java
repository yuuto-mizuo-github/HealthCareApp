package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Bmi;
import model.BmiModel;

/**
 * Servlet implementation class BMIServlet
 */
@WebServlet("/BMIServlet")
public class BMIServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//パラメータ取得
		String height = request.getParameter("height");
		String weight = request.getParameter("weight");
		String sabun = request.getParameter("sabun");
		
		
		// パラメータチェック
				StringBuilder errorMsg = new StringBuilder();
				if (height == null || height.length() == 0) {
					errorMsg.append("身長が入力されていません<br>");
				}
				if (weight == null || weight.length() == 0) {
					errorMsg.append("体重が入力されていません<br>");
				}
				if (errorMsg.length() > 0) {
					// エラー発生
					request.setAttribute("errorMsg", errorMsg);

					request.getRequestDispatcher("/WEB-INF/jsp/Bmi.jsp").forward(request, response);
					return;
				}

		
	
		
	
		
		//入力値をプロパティに設定
		Bmi bmi = new Bmi();
		bmi.setSabun(Double.parseDouble(sabun));
		bmi.setHeight(Double.parseDouble(height));
		bmi.setWeight(Double.parseDouble(weight));

		//計算
		BmiModel bmimodel = new BmiModel();
		bmimodel.bmi(bmi);
	    bmimodel.sabun(bmi);
		

		
		//保存
		request.setAttribute("bmi", bmi);
		
		
		//フォワード
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/Bmians.jsp");
		dispatcher.forward(request, response);
	}

}
