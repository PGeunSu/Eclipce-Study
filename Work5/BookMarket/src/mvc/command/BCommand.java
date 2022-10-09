package mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface BCommand {
	
	// 동일한 목적하에 동일한 기능을 수행하게끔 강제하는 것이 바로 인터페이스
	//구현 객체에서 해당하는 기능을 각각 다르게 작성하게 될것(overriding)
	public void execute(HttpServletRequest request, HttpServletResponse response);
	

}
