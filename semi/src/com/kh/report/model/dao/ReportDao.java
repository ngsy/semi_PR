package com.kh.report.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.member.model.dao.MemberDao;
import com.kh.report.model.vo.Report;
import static com.kh.common.JDBCTemplate.*;
public class ReportDao {

	private Properties prop = new Properties();
	public ReportDao() {
		
		String fileName = MemberDao.class.getResource("/sql/report/report.properties").getPath();
	
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
	public ArrayList<Report> getReportList(Connection conn) {
		
		ArrayList<Report> list=new ArrayList<Report>();
		Report report=null;
		PreparedStatement pstmt=null;
		
		ResultSet rset=null;
		
		
				
		
		String sql=prop.getProperty("selectReportList");
		try {
			pstmt=conn.prepareStatement(sql);
			
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				
				 report=new Report();
				 

				 
				 report.setReportNo(rset.getInt("REPORT_NO"));
				 report.setReportObjNo(rset.getInt("REPORT_OBJECT_NO"));
				 report.setReportType(rset.getInt("REPORT_TYPE"));
				 report.setReportCategory(rset.getString("REPORT_CATEGORY"));
				 report.setReportContent(rset.getString("REPORT_CONTENT"));
				 report.setMemNo(rset.getString("M_NAME"));
				 report.setReportDate(rset.getDate("REPORT_DATE"));
				 
				 
			
				 list.add(report);

				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		
		
		return list;
	}
	public Report getReport(Connection conn, int rno) {
		
		Report report=null;
		PreparedStatement pstmt=null;
		
		ResultSet rset=null;
		
		String sql=prop.getProperty("selectReport");
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, rno);
			
			rset=pstmt.executeQuery();
			
			while(rset.next()) {
				
				 report=new Report();
				 

				 
				 report.setReportNo(rset.getInt("REPORT_NO"));
				 report.setReportObjNo(rset.getInt("REPORT_OBJECT_NO"));
				 report.setReportType(rset.getInt("REPORT_TYPE"));
				 report.setReportCategory(rset.getString("REPORT_CATEGORY"));
				 report.setReportContent(rset.getString("REPORT_CONTENT"));
				 report.setMemNo(rset.getString("M_NAME"));
				 report.setReportDate(rset.getDate("REPORT_DATE"));
				 
				 
			
				

				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		
		
		
		
		return report;
	}
}
