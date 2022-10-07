package mvc.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.BCommand;
import mvc.command.BDeleteCommand;
import mvc.command.BListCommand;
import mvc.command.BUpdateCommand;
import mvc.command.BViewCommand;
import mvc.command.BWriteCommand;
import mvc.command.BWriteFormCommand;


	public class BoardController extends HttpServlet {
		   private static final long serialVersionUID = 1L;
		 
		    public BoardController() {
		        
		    }


		   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		      System.out.println("doGet");
		      actionDo(request, response);      
		   }

		   
		   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		      System.out.println("doGet");
		      actionDo(request, response);
		   }
		   
		   
		   private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		      System.out.println("actionDo");
		      
		      String uri = request.getRequestURI();
		      System.out.println("URI : " + uri);
		      
		      String contextPath = request.getContextPath();
		      System.out.println("contextPath : " + contextPath);
		      
		      String command = uri.substring(contextPath.length());
		      System.out.println("command : " + command);
		      
		      response.setContentType("text/html; charse=utf-8");
		      request.setCharacterEncoding("UTF-8");
		      
		      BCommand com = null;
		      String viewPage = null;
		      
		    //command 패턴에 따라서 분기함
		      if(command.equals("/boardListAction.do")) {
		    	  System.out.println("-------------------------");
		    	  System.out.println("/boardListAction.do 페이지 호출");
		    	  System.out.println("-------------------------");
		    	  
		    	  com = new BListCommand();
		    	  com.execute(request, response);
		    	  viewPage = "./board/list.jsp";
		    	  
		      }else if(command.equals("/boardWriteForm.do")) {
					System.out.println("--------------------------------");
					System.out.println("/boardWriteForm.do 페이지 호출");
					System.out.println("--------------------------------");
					
					com = new BWriteFormCommand();
					com.execute(request, response);	
					viewPage = "./board/writeForm.jsp";
					
			  }else if(command.equals("/boardWriteAction.do")) {
					System.out.println("--------------------------------");
					System.out.println("/boardWriteAction.do 페이지 호출");
					System.out.println("--------------------------------");
					
					com = new BWriteCommand();
					com.execute(request, response);
					viewPage = "/boardListAction.do";
					
				}else if(command.equals("/boardViewAction.do")) {      //게시판에 있는 게시물 제목 클릭하여 상세내용보는 부분
			         System.out.println("--------------------------------");
			         System.out.println("/boardWriteAction.do 페이지 호출");
			         System.out.println("--------------------------------");
			            
			       
			         com = new BViewCommand();
			         com.execute(request, response);
			         System.out.println("boardViewAction의 execute()실행 완료");
			         
			         viewPage = "./board/view.jsp";
			      }else if(command.equals("/boardUpdateAction.do")) {      //게시판에 있는 게시물 제목 클릭하여 상세내용보는 부분
	                     System.out.println("--------------------------------");
	                     System.out.println("/boardUpdateAction.do 페이지 호출");
	                     System.out.println("--------------------------------");
	                        
	                    
	                     com = new BUpdateCommand();
	                     com.execute(request, response);
	                     System.out.println("boardUpdateAction의 execute()실행 완료");
	                     viewPage = "/boardListAction.do";
                  }else if(command.equals("/boardDeleteAction.do")) {      //게시판에 있는 게시물 제목 클릭하여 상세내용보는 부분
                         System.out.println("--------------------------------");
                         System.out.println("/boardDeleteAction.do 페이지 호출");
                         System.out.println("--------------------------------");
                            
                        
                         com = new BDeleteCommand();
                         com.execute(request, response);
                         System.out.println("boardDeleteAction의 execute()실행 완료");
                         viewPage = "/boardListAction.do";
                      } 
		      //위의 분기문에서 설정된 view(.jsp)파일로 페이지 이동
		      RequestDispatcher rDispatcher = request.getRequestDispatcher(viewPage);
		      rDispatcher.forward(request, response);
		      
		      
		   }
		}


