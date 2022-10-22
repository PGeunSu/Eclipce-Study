package mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.model.BoardDAO;

//게시판 게시글 작성을 위해서 사용자명을 가져오는 커맨드 객체
public class BWriteFormCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		BoardDAO bDao = BoardDAO.getInstance();
		String id = request.getParameter("id");
		

		String name = bDao.getLoginName(id);
		request.setAttribute("name", name);
	}

	
}
