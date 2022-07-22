package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		String height = request.getParameter("heghit");
		String weight = request.getParameter("weight");
		
		
		
		//前回のやつの保存
		Bmi BMI = new Bmi(); 
		double maebmi=BMI.getBmi();
		
		
		
		// パラメータチェック
		StringBuilder errorMsg = new StringBuilder();
		if (height == null || height.length() == 0) {
			errorMsg.append("身長が入力されていません<br>");
		}
		if (weight == null || weight.length() == 0) {
			errorMsg.append("体重が入力されていません<br>");
		}
		if (errorMsg.length() > 0) {
			// エラー
			request.setAttribute("errorMsg", errorMsg.toString());

			request.getRequestDispatcher("WEB-INF/jsp/Bmi.jsp").forward(request, response);
			return;
		}
		
		//入力値をプロパティに設定
		Bmi bmi = new Bmi();
		bmi.setHeight(Double.parseDouble(height));
		bmi.setWeight(Double.parseDouble(weight));
		

		//計算
		BmiModel bmimodel = new BmiModel();
		bmimodel.bmi(bmi);
		
		double sabun =bmimodel.sabun(bmi,maebmi);
		if (sabun<0) {		
			errorMsg.append("エラーが出ました<br>");
			// エラー
			request.setAttribute("errorMsg", errorMsg.toString());

			request.getRequestDispatcher("WEB-INF/jsp/Bmi.jsp").forward(request, response);
			return;
			
		}
		
		//保存
		HttpSession session = request.getSession();
		session.setAttribute("sabun", sabun);
		request.setAttribute("bmi", bmi);
		
		
		//フォワード
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/Bmians.jsp");
		dispatcher.forward(request, response);
	}

}
