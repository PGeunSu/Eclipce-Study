package reservation.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import reservation.model.ReservationDAO;
import reservation.model.ReservationDTO;

/**
 * Servlet implementation class UserReserveInfoServlet
 */
@WebServlet(urlPatterns= {"/reservation/reserveinfo"})
public class UserReserveInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * 각 header.jsp에서 예약내역 클릭시 회원의 예약내역 정보를 reservation - reserveInfo.jsp에게 전달 
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String sessionId = (String)session.getAttribute("sessionId");
		ReservationDAO dao = new ReservationDAO();
		ArrayList<ReservationDTO> dto = dao.selectReservation(sessionId);

		request.setAttribute("dto", dto);
		RequestDispatcher rd = request.getRequestDispatcher("/reservation/reserveInfo.jsp");
		rd.forward(request, response);
	}

	/**
	 * user - reserveInfo.jsp에서 예약취소 버튼 클릭시 회원의 모든 예약 정보를 reserveCancel.jsp에게 전달
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String sessionId = (String)session.getAttribute("sessionId");
		ReservationDAO dao = new ReservationDAO();
		ArrayList<ReservationDTO> dto = dao.selectReservation(sessionId);
		
		request.setAttribute("dto", dto);
		RequestDispatcher rd = request.getRequestDispatcher("/reservation/reserveCancel.jsp");
		rd.forward(request, response);
	}

}
