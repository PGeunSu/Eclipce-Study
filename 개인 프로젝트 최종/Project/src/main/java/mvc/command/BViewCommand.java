package mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.model.BoardDAO;
import mvc.model.BoardDTO;

public class BViewCommand implements BCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		BoardDAO bDao = BoardDAO.getInstance();
		
		int num = Integer.parseInt(request.getParameter("num"));
		//보고자 하는 번호
		int pageNum = Integer.parseInt(request.getParameter("pageNum"));
		//보고자하는 게시글이 있는 페이지수
		BoardDTO boardDTO = new BoardDTO();
		boardDTO =  bDao.getBoardByNum(num, pageNum);
		
		request.setAttribute("num", num);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("boardDTO", boardDTO);
		
		
		
	}

}
