package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.*;
import vo.*;

@WebServlet("/CashBookOneController")
public class CashBookOneController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// CashbookOneController.doGet() 
		int cashbookNo = Integer.parseInt(request.getParameter("cashbookNo"));
		CashBookDao cashbookDao = new CashBookDao(); // CashbookDao.selectCashbookOne()
		CashBook cashbook = new CashBook();
		cashbook = cashbookDao.selectCashBookOne(cashbookNo);
		
		request.setAttribute("cashbookNo", cashbookNo);
		request.setAttribute("cashbook", cashbook);
		
		// forward
		request.getRequestDispatcher("/WEB-INF/view/CashbookOne.jsp").forward(request, response); 
	}
}