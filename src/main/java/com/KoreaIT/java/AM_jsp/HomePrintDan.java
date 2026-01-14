package com.KoreaIT.java.AM_jsp;

/*자바처럼 쓸 수 있음*/

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/home/printDan")
public class HomePrintDan extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher("/jsp/home/printDan.jsp").forward(request, response);
		/*이 주소가 요청되면 요청을 jsp 파일로 옮긴다*/
	}

}