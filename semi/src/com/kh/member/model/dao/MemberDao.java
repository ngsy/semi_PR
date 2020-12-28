package com.kh.member.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.member.model.vo.Member;
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

	public int insertMember(Connection conn, Member m) {
		int result = 0;

		PreparedStatement pstmt = null;
		String sql = prop.getProperty("joinMember");

		System.out.println("sql: "+sql);
		
/*
 * #M_NO
#M_NAME
#ID
#PASSWORD
#PHONE
#EMAIL


#STATUS
#REPORT_COUNT
#GRADE

#LATITUDE
#LONGITUDE
#REGION1
#REGION2

#BLACKLIST*/		
	
		try {
			
//joinMember=INSERT INTO MEMBER VALUES(SEQ_UNO.NEXTVAL, ?, ?, ?, ?, ?,  DEFAULT, DEFAULT, DEFAULT, NULL,NULL,NULL,NULL,DEFAULT)

			pstmt =conn.prepareStatement(sql);
			
			pstmt.setString(1,m.getM_name());
			pstmt.setString(2,m.getId());
			pstmt.setString(3,m.getPwd());
			pstmt.setString(4,m.getPhone());
			pstmt.setString(5,m.getEmail());
			
			pstmt.setDouble(6,m.getLat());
			pstmt.setDouble(7,m.getLon());
			pstmt.setString(8,m.getRegion1());
			pstmt.setString(9, m.getRegion2());
	
			
			result =pstmt.executeUpdate();
			
			System.out.println("result -Dao-"+result );
			
		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally {
			
			close(pstmt);
		}
		
		return result;
	}

	public Member loginMember(Connection conn, String userId, String userPwd) {
		Member loginUser = null;
		
		PreparedStatement pstmt=null;
		ResultSet rset =null;
		
		//loginMember=SELECT * FROM MEMBER WHERE USER_ID=? AND USER_PWD=? AND STATUS='Y'
		String sql = prop.getProperty("loginMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			pstmt.setString(2, userPwd);
			
			rset =pstmt.executeQuery();
/*M_NO
M_NAME
ID
PASSWORD
PHONE
EMAIL
STATUS
REPORT_COUNT
GRADE
LATITUDE
LONGITUDE
REGION1
REGION2
BLACKLIST*/
			if(rset.next()) {
				loginUser = new Member(
							rset.getInt("M_NO"),
							rset.getString("M_NAME"),
							rset.getString("ID"),
							rset.getString("PASSWORD"),
							rset.getString("PHONE"),
							rset.getString("EMAIL"),
							rset.getString("STATUS"),
							rset.getInt("REPORT_COUNT"),
							rset.getInt("GRADE"),
							rset.getDouble("LATITUDE"),
							rset.getDouble("LONGITUDE"),
							rset.getString("REGION1"),
							rset.getString("REGION2"),
							rset.getString("BLACKLIST")
									);
						
						
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		
		return loginUser;
	}

}
