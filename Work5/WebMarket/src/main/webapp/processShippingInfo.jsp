<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>

<%
	request.setCharacterEncoding("UTF-8");

	Cookie cartId = new Cookie("Shipping_cartId" , URLEncoder.encode(request.getParameter("cartId"),"utf-8"));
	Cookie name = new Cookie("Shipping_cartId" , URLEncoder.encode(request.getParameter("name"),"utf-8"));
	Cookie shippingDate = new Cookie("Shipping_cartId" , URLEncoder.encode(request.getParameter("shippingDate"),"utf-8"));
	Cookie country = new Cookie("Shipping_cartId" , URLEncoder.encode(request.getParameter("country"),"utf-8"));
	Cookie zipCode = new Cookie("Shipping_cartId" , URLEncoder.encode(request.getParameter("zipCode"),"utf-8"));
	Cookie addressName = new Cookie("Shipping_cartId" , URLEncoder.encode(request.getParameter("addressName"),"utf-8"));
	//홈페이지에 전송된 장바구니, 아이디 .... 등을 전달받도록 request 내장 객체의 getParameter() 메소드 작성
	
	cartId.setMaxAge(24 * 60 * 60);
	name.setMaxAge(24 * 60 * 60);
	zipCode.setMaxAge(24 * 60 * 60);
	country.setMaxAge(24 * 60 * 60);
	addressName.setMaxAge(24 * 60 * 60);
	
	response.addCookie(cartId);
	response.addCookie(name);
	response.addCookie(shippingDate);
	response.addCookie(zipCode);
	response.addCookie(country);
	response.addCookie(addressName);
	
	response.sendRedirect("orderConfirmation.jsp");
%>