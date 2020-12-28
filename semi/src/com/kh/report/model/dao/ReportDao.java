package com.kh.report.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.Properties;

import com.kh.member.model.dao.MemberDao;

public class ReportDao {

	private Properties prop = new Properties();
	public ReportDao() {
		
		String fileName = MemberDao.class.getResource("/sql/report/report.properties").getPath();
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
}
