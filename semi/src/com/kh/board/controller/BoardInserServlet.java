package com.kh.board.controller;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.board.model.service.BoardService;
import com.kh.board.model.vo.Attachment;
import com.kh.board.model.vo.Board;
import com.kh.member.model.vo.member;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class BoardInserServlet
 */
@WebServlet("/insert.bo")
public class BoardInserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardInserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		if (ServletFileUpload.isMultipartContent(request)) {// true로 넘어옴

			// 1. 전송된 파일들을 처리할 작업 내용 (전송되는 파일의 용량 제한, 전달된 파일을 저장할 폴더 경로)

			// 1_1. 전송파일 용량 제한 (int maxSize)
//					: 10Mbyte로 제한  ([참고] cos.jar로 파일 업로드 시 최대 2기가(1.6)까지만 가능)
//			     		1Kbyte = 1024byte (킬로바이트)
//					1Mbyte = 1024Kbyte = 1024 * 1024 byte (메가바이트)
//					1Gbyte = 1024Mbyte = 1024 * 1024 * 1024 Byte (기가바이트)
//					10mbyte = 10 * 1024 * 1024 byte 

			// 1_2. 전달된 파일을 저장할 서버의 폴더 경로 알아내기 (String savePath)
			// 웹 컨테이너(WebContent) 경로안의 resources 폴더 경로 추출 (물리(절대)적인 경로)

			int maxSize = 10 * 1024 * 1024;
			String resources = request.getSession().getServletContext().getRealPath("/resources");
			String savePath = resources + "\\board_upfiles\\";

			System.out.println("savePath:" + savePath);

			// 2. MultipartRequest 객체 생성하기 (즉, 파일 서버에 업로드 하기)
			// MultipartRequest multiRequest = new MultipartRequest(request, savePath,
			// maxSize, "UTF-8", new DefaultFileRenamePolicy());

			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8",
					new DefaultFileRenamePolicy());
			// --> 서버에 파일이 upload 됨

			String title = multiRequest.getParameter("title");
			String content = multiRequest.getParameter("content");
			int userNo = ((member) request.getSession().getAttribute("loginUser")).getM_no();
			


			Board b = new Board();

		
			b.setBoardTitle(title);
			b.setBoardContent(content);
			b.setBoardWriter(String.valueOf(userNo));

			Attachment at = null;

			if (multiRequest.getOriginalFileName("upfile") != null) {

				String originName = multiRequest.getOriginalFileName("upfile");

				String changeName = multiRequest.getFilesystemName("upfile");

				at = new Attachment();

				at.setFilePath(savePath);
				at.setOriginName(originName);
				at.setChangeName(changeName);

			}

			int result = new BoardService().insertBoard(b, at);
			if (result > 0) {
				request.getSession().setAttribute("msg", "게시글 등록 성공");
				response.sendRedirect("list.bo");
			} else {

				if (at != null) {
					// 삭제할 파일 객체 생성
					File failedFile = new File(savePath + at.getChangeName());
					failedFile.delete();
				}

				request.setAttribute("msg", "게시판 등록 실패!!");
				request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
			}
		}

	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
