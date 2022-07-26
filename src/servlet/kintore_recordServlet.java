package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.kintore;

/**
 * Servlet implementation class kintore_recordServlet
 */
@WebServlet("/kintore_recordServlet")
public class kintore_recordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public kintore_recordServlet() {
		super();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// パラメータ取得
		String squat = request.getParameter("squat");
		String situp = request.getParameter(" situp");
		String pushups = request.getParameter(" pushups");
		String running = request.getParameter("running");
		String deadline = request.getParameter("deadline");

		if (squat == null) {
			squat = "×";
		} else {
			squat = "○";
		}

		if (situp == null) {
			situp = "×";
		} else {
			situp = "○";
		}

		if (pushups == null) {
			pushups = "×";
		} else {
			pushups = "○";
		}

		if (running == null) {
			running = "×";
		} else {
			running = "○";
		}


		// 入力値をプロパティに設定
		kintore kintore = new kintore();
		kintore.setSquat(squat);
		kintore.setSitup(situp);
		kintore.setPushups(pushups);
		kintore.setRunning(running);
		kintore.setDeadline(deadline);

		// 保存
		request.setAttribute("kintore", kintore);

		// フォワード
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/Muscle trainingans.jsp");
		dispatcher.forward(request, response);
		doGet(request, response);
	}

}
