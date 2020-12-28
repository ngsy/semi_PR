package com.kh.board.model.service;

import java.sql.Connection;
import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import com.kh.board.model.dao.BoardDao;
import com.kh.board.model.vo.Attachment;
import com.kh.board.model.vo.Board;

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

}
