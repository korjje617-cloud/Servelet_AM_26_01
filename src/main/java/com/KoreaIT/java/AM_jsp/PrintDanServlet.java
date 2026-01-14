package com.KoreaIT.java.AM_jsp;

/*자바처럼 쓸 수 있음*/

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/printDan")
public class PrintDanServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");

		String inputDan = request.getParameter("dan");
		String inputLimit = request.getParameter("limit");
		String inputColor = request.getParameter("color");
		
		/* html 쓰는 방법
		 * http://localhost:8090/Servelet_AM_26_01/printDan?dan=123&limit=5&color=red
		 * 주소 ? dan=123 & limit=5 & color=red 
		 */

		System.out.println(inputColor);

		if (inputDan == null) {
			inputDan = "1";
		}

		if (inputLimit == null) {
			inputLimit = "1";
		}

		int dan = Integer.parseInt(inputDan);
		int limit = Integer.parseInt(inputLimit);

		response.getWriter().append(String.format("<div style=\"color:%s;\">==%d단==</div>", inputColor, dan));

		for (int i = 1; i <= limit; i++) {
			response.getWriter()
					.append(String.format("<div style='color:%s;'>%d * %d = %d</div>", inputColor, dan, i, dan * i));
		}

	}

}