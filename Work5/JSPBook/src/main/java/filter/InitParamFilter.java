package filter;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class InitParamFilter implements Filter {
	private FilterConfig filterConfig = null;

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("Filter02 시작...");
		this.filterConfig = filterConfig;
		//filterConggid 객체는 web.xml에서 <init-param> 태그를 통해서 작성해준 설정값 정보들과 ServeletContext에서 대한 참조를 가지고 있으므로 필터 초기화시에 이를 사용하면 유용
		//filterConfig에서 사용할 수 있는 메소드 - ppt 7페이지 참조
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain)	throws IOException, ServletException {
		System.out.println("Filter02 수행...");

		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		//폼페이지에서 전송된 파라미터인 아이디와 비밀번호를 전달받도록 request 내장객체의 getParameter()메소드 작성

		String param1 = filterConfig.getInitParameter("param1");
		String param2 = filterConfig.getInitParameter("param2");
		//web.xml파일의 <init-param>요소에 설정된 매개 변수 param1, param2를 전달 받도록 FilterConfig 객체의 getInitParameter() 메소드를 작성
		
		String message;

		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();
		//폼페이지에서 전송된 요청 파라미터와 web.xml파일에 설정된 매개변수의 값을 비교
		
		if (id.equals(param1) && passwd.equals(param2))
			message = "로그인에 성공헀습니다.";
		else
			message = "로그인에 실패했습니다.";

		writer.println(message);	

		filterChain.doFilter(request, response);
	}

	@Override
	public void destroy() {
		System.out.println("Filter02초기화..");
	}
}
