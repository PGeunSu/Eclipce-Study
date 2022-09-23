package filter;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class AuthenFilter implements Filter {
//filter는 인터페이스이기 때문에 꼭 메소드를 재정의 해주어야 한다.
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("Filter01 초기화...");
	}//필터를 초기화하도록 init() 메소드 작성
	

	
	//필터를 리소스에 적용하도록 doFilter() 메소드 작성
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain)
			throws IOException, ServletException {
		System.out.println("Filter01 수행...");
		String name = request.getParameter("name");
		//폼페이지에서 전송된 요청 파라미터를 전달받도록 내장객체 getParameter() 메소드 작성
		if(name == null || name.equals("")) {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			String message = "입력된 name 값은 null입니다.";
			writer.println(message);
			return;
			//폼페이지에서 전송된 요청 파라미터가 없으면 응답 웹페이지에 메세지를 출력하도록 응답 웹페이지에 대한 문자 인코딩, 콘텐츠 유형, 메세지등을 작성
	}
		filterChain.doFilter(request,response);
		//연속적으로 필터가 있으면 다음 필터로 제어가 넘기도록 filterChain 객체 타입의 doFilter() 메소드를 작성		
	}
	
	
	@Override
	public void destroy() {
		System.out.println("Filter01 해제...");
	}

}
