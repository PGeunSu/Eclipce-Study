<%@ page contentType="text/html; charset=UTF-8"%>
<%!
	int pageCount = 0;
	void addCount() {
		pageCount++;
	}
%>

<%
	addCount();
%>
<p>이 사이트 방문 <%=pageCount%>번 째 입니다.</p>