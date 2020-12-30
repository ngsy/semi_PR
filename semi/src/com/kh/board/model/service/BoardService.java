package com.kh.board.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import com.kh.board.model.dao.BoardDao;
import com.kh.board.model.vo.Attachment;
import com.kh.board.model.vo.Board;
import com.kh.board.model.vo.PageInfo;
import com.kh.board.model.vo.Reply;

public class BoardService { 

	public int insertBoard(Board b, Attachment at) {
		Connection conn = getConnection();
		int result1 = new BoardDao().insertBoard(conn, b);
		int result2 = 1;
		if (at != null) {
		result2 = new BoardDao().insertAttachment(conn, at);
		}
		if (result1 * result2 > 0) {
			commit(conn);

		} else {
			rollback(conn);
		}
		close(conn);

		return result1 * result2;
	}

	public int getListCount() {
		Connection conn = getConnection();
		int listCount = new BoardDao().getListCount(conn);

		close(conn);
		return listCount;
		
		
	}

	public ArrayList<Board> selectList(PageInfo pi) {
		Connection conn = getConnection();

		ArrayList<Board> list = new BoardDao().selectList(conn, pi);
		close(conn);
		return list;
	}

	public Board selectBoard(int bno) {
		
		Connection conn = getConnection();

		int result = new BoardDao().increaseCount(conn, bno);

		Board b = null;
		if (result > 0) {
			commit(conn);
			b = new BoardDao().selectBoard(conn, bno);
		} else {
			rollback(conn);
		}
		close(conn);
		return b;
	}

	public Attachment selectAttachment(int bno) {
		Connection conn = getConnection();

		Attachment at = new BoardDao().selectAttachment(conn, bno);
		close(conn);
		return at;
	}

	public int insertReply(Reply r) {
		
		Connection conn = getConnection();
		int result =new BoardDao().insertReply(conn,r);
		
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;
	
	}

	public ArrayList<Reply> selectRlist(int bId) {
		Connection conn = getConnection();
		ArrayList<Reply> list = new BoardDao().selectRlist(conn,bId);
		 close(conn);
		return list;
	}

	public int deleteBoard(int bid) {
		Connection conn = getConnection();
		int result1 = new BoardDao().deleteBoard(conn, bid);
		int result2 = new BoardDao().deleteAttachment(conn, bid);
		
		if(result1>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result1;
	}

	public Board selectUpdateBoard(int bno) {
		Connection conn = getConnection();
		Board b = new BoardDao().selectBoard(conn, bno);
		close(conn);
		return b;
	}

	public int updateBoard(Board b, Attachment at) {
		Connection conn = getConnection();
		int result1 = new BoardDao().updateBoard(conn, b);
		int result2 = 1;
		if (at != null) {
			if (at.getFileNo() != 0) {
				result2 = new BoardDao().updateAttachment(conn, at);
			} else {
				result2 = new BoardDao().insertNewAttahchment(conn, at);
			}
		}

		if (result1 > 0 && result2 > 0) {
			commit(conn);

		} else {
			rollback(conn);
		}
		close(conn);

		return result1 * result2;
	}

}
