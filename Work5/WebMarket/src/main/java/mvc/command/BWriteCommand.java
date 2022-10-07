package mvc.command;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.model.BoardDAO;
import mvc.model.BoardDTO;

public class BWriteCommand implements BCommand {
	// 게시글을 작성하고 그 게시글을 DB에 저장해주는 커맨드 객체
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		BoardDAO bDAO = BoardDAO.getInstance();
		BoardDTO boardDTO = new BoardDTO();

		boardDTO.setId(request.getParameter("id"));
		boardDTO.setName(request.getParameter("name"));
		boardDTO.setSubject(request.getParameter("subject"));
		boardDTO.setContent(request.getParameter("content"));

		SimpleDateFormat sFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String regist_day = sFormat.format(new Date());

		boardDTO.setRegist_day(regist_day);
		boardDTO.setHit(0);
		boardDTO.setIp(request.getRemoteAddr());
		bDAO.insertBoard(boardDTO); // DB에 저장하는 메소드 호출
	}

}
