package com.kh.report.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.report.model.dao.ReportDao;
import com.kh.report.model.vo.Report;
public class ReportService {

	public ArrayList<Report> getReportList() {
		Connection conn=getConnection();
		
		ArrayList<Report> list=new ReportDao().getReportList(conn);
		
		close(conn);
		
		return list;
	}

	public Report getReport(int rno) {
		Connection conn=getConnection();
		
		Report r=new ReportDao().getReport(conn,rno);
		close(conn);
		return r;
	}

}
