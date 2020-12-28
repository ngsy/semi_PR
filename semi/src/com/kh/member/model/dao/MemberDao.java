package com.kh.member.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.member.model.vo.member;
import static com.kh.common.JDBCTemplate.*;

public class MemberDao {
	private Properties prop = new Properties();
	
	
	public MemberDao() {
		String fileName = MemberDao.class.getResource("/sql/member/member.properties").getPath();
		System.out.println("fileName : "+fileName);
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public int insertMember(Connection conn, member m) {
		int result = 0;

		PreparedStatement pstmt = null;
		String sql = prop.getProperty("joinMember");

		System.out.println("sql: "+sql);
		
		
		/*
#M_NAME
#ID
#PASSWORD
#PHONE
#ADDRESS
#EMAIL*/		
		try {
			
//joinMember=INSERT INTO MEMBER VALUES(SEQ_UNO.NEXTVAL, ?, ?, ?, ?, ?,  DEFAULT, DEFAULT, DEFAULT, NULL,NULL,NULL,NULL,DEFAULT)

			pstmt =conn.prepareStatement(sql);
			
			pstmt.setString(1,m.getM_name());
			pstmt.setString(2,m.getId());
			pstmt.setString(3,m.getPwd());
			pstmt.setString(4,m.getPhone());
			pstmt.setString(5,m.getEmail());
	
			
			result =pstmt.executeUpdate();
			
			System.out.println("result -Dao-"+result );
			
		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally {
			
			close(pstmt);
		}
		
		return result;
	}

}
