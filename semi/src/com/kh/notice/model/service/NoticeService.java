package com.kh.notice.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.kh.common.JDBCTemplate.*;

import com.kh.notice.model.dao.NoticeDao;
import com.kh.notice.model.vo.Notice;

public class NoticeService {

	public int insertNotice(Notice n) {
		Connection conn = getConnection();
		int result = new NoticeDao().insertNotice(conn, n);
		// NoticeDao 클래스로 가서 insertNotice 메소드 완성시키고 오자
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	public ArrayList<Notice> selectList() {
      Connection conn = getConnection();
		
		ArrayList<Notice> list = new NoticeDao().selectList(conn);
		
		close(conn);
		
		return list;
	}

}
