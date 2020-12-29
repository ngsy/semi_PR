package com.kh.board.model.dao;

import java.sql.Statement;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;
import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import com.kh.board.model.vo.Attachment;
import com.kh.board.model.vo.Board;
import com.kh.board.model.vo.PageInfo;

public class BoardDao { 
	private Properties prop = new Properties();

	
	
	public BoardDao() {
		String fileName = BoardDao.class.getResource("/sql/board/board.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public int insertBoard(Connection conn, Board b) {
		int result = 0;

		PreparedStatement pstmt = null;

		String sql = prop.getProperty("insertBoard");

		try {
			pstmt = conn.prepareStatement(sql);

		
			pstmt.setString(1, b.getBoardTitle());
			pstmt.setString(2, b.getBoardContent());
			pstmt.setInt(3, Integer.parseInt(b.getBoardWriter()));

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}
	
	public int insertAttachment(Connection conn, Attachment at) {
		int result = 0;

		PreparedStatement pstmt = null;

		String sql = prop.getProperty("insertAttachment");

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, at.getOriginName());
			pstmt.setString(2, at.getChangeName());
			pstmt.setString(3, at.getFilePath());

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}

	public int getListCount(Connection conn) {
		int listCount = 0;
		Statement stmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("getListCount");

		try {
			stmt = conn.createStatement();

			rset = stmt.executeQuery(sql);

			if (rset.next()) {
				listCount = rset.getInt(1);
         System.out.println(listCount);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			close(rset);
			close(stmt);
		}

		return listCount;
	}

	public ArrayList<Board> selectList(Connection conn, PageInfo pi) {
		ArrayList<Board> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String sql = prop.getProperty("selectList");
		int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;// 시작페이지
		int endRow = startRow + pi.getBoardLimit() - 1;
		System.out.println("start row:" + startRow);
		System.out.println("endrow :" + endRow);

		// current page =1 startrow 1 endrow:10
		// current page =1 startrow 1 endrow:10
		// current page =1 startrow 1 endrow:10
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);

			rset = pstmt.executeQuery();

//			while (rset.next()) {
//				list.add(new Board(rset.getInt("BOARD_NUMBER"), 
//						rset.getString("BOARD_TITLE"), rset.getString("M_NO"), rset.getInt("B_READ_COUNT"),
//						rset.getDate("B_WRITE_DATE")));
//
//			}
			
			while (rset.next()) {
				list.add(new Board(rset.getInt("BOARD_NUMBER"),
						rset.getString("BOARD_TITLE"),rset.getString("ID"), rset.getInt("B_READ_COUNT"),rset.getDate("B_WRITE_DATE")));

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	public int increaseCount(Connection conn, int bno) {
		// TODO Auto-generated method stub
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("increaseCount");

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);

			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;

	}

	public Board selectBoard(Connection conn, int bno) {
		Board b = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String sql = prop.getProperty("selectBoard");
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, bno);

			rset = pstmt.executeQuery();

			if (rset.next()) {
				b = new Board(rset.getInt("BOARD_NUMBER"),
						rset.getString("BOARD_TITLE"),rset.getString("BOARD_CONTENT"),rset.getString("ID"), rset.getInt("B_READ_COUNT"),rset.getDate("B_WRITE_DATE"));


			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return b;
	}

	public Attachment selectAttachment(Connection conn, int bno) {
		Board b = null;
		Attachment at = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String sql = prop.getProperty("selectAttachment");

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			rset = pstmt.executeQuery();   
			if (rset.next()) {
				at = new Attachment();
				at.setFileNo(rset.getInt("FILE_NUMBER"));
				at.setOriginName(rset.getString("FILE_ORIGIN"));
				at.setChangeName(rset.getString("FILE_CHANGED"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return at;
	}

	
}