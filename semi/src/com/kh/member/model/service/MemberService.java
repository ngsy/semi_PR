package com.kh.member.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;

import com.kh.member.model.dao.MemberDao;
import com.kh.member.model.vo.member;

public class MemberService {

	
	
	
	
	
	
	public int insertMember(member m) {
		Connection conn = getConnection();
		
		int result = new MemberDao().insertMember(conn,m);
		
		System.out.println("result: -서비스-"+result);
		
		if(result >0 ) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		return result;
		
		
	
	}

}