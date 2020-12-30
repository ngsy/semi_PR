package com.kh.report.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.PageDto;
import com.kh.report.model.dao.ReportDao;
import com.kh.report.model.vo.Report;
public class ReportService {

	public ArrayList<Report> getReportList(PageDto dto) {
		Connection conn=getConnection();
		
		ArrayList<Report> list=new ReportDao().getReportList(conn,dto);
		
		close(conn);
		
		return list;
	}

	public Report getReport(int rno) {
		Connection conn=getConnection();
		
		Report r=new ReportDao().getReport(conn,rno);
		close(conn);
		return r;
	}

	public int getTotalCount() {
		Connection conn=getConnection();
		
		int total=new ReportDao().getTotalCount(conn);
		
		close(conn);
		
		
		
		
		
		return total;
	}

}
