<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.report.model.vo.Report,java.text.SimpleDateFormat"%>
<%@ include file ="../common/header.jsp" %>
<%
	Report r=(Report)request.getAttribute("report");

	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
	String date=sdf.format(r.getReportDate());
	int type=r.getReportType();
%>
       <script>
       	$(function(){
       		
       		var delBtn=$("#delBtn");
       		var getBtn=$("#getBtn");
       		<% if(type==1){ %>
       			delBtn.text("댓글 삭제하기");
       			getBtn.text("댓글 조회하기");
       		
       		<% }else if(type==2){ %>
	   			delBtn.text("게시글 삭제하기");
	   			getBtn.text("게시글 조회하기");
       		
       		
       		<% }else if(type==3){ %>
	   			delBtn.text("게시글 삭제하기");
	   			getBtn.text("게시글 조회하기");
       		
       		<% }else if(type==4){ %>
	   			delBtn.text("사용자 블랙리스트 추가하기");
	   			getBtn.remove();
       		
       		
       		<% }%>
       	
       	});
       	
  
        </script>            



	        <div class="card shadow mb-4">
                  <div class="card-header py-3">
                       신고조회    
                       
                   </div>                      
                    
                  <div class="card-body">
          
                  	<form>
                  	
                  		<div class="form-group">
                  			<label for="reportNo" class="form-label">신고번호</label>
                  			<input class="form-control" id="reportNo" name="reportNo" type="text" readonly value="<%=r.getReportNo()%>">
                  		
                  		</div>
                  		
                  		                 	
                  		<div class="form-group">
                  			<label for="reportMem" class="form-label">신고한 사용자</label>
                  			<input class="form-control" id="reportMem" name="reportMem" type="text" readonly value="<%=r.getMemNo()%>">
                  		
                  		</div>
                  		
                  		<div class="form-group">
                  			<label for="reportCategory" class="form-label">카테고리</label>
                  			<input class="form-control" id="reportCategory" name="reportCategory" type="text" readonly value="<%=r.getReportCategory()%>">
                  		
                  		</div>
                  		<div class="form-group">
                  			<label for="reportCategory" class="form-label">내용</label>
						  <textarea class="form-control" id="reportCategory" name="reportCategory" rows="3" readonly ><%=r.getReportContent()%></textarea>
                  		</div>
                  		
                  		                 		
                  		<div class="form-group">
                  			<label for="reportDate" class="form-label">신고 날짜</label>
                  			<input class="form-control" id="reportDate" name="reportDate" type="text" readonly value="<%=date%>">
                  		
                  		</div>
                  			<label></label>
                  		  <button class="btn btn-primary" id="getBtn"></button>
                  		  <button class="btn btn-danger" id="delBtn" ></button>	
                  		  
                  		
                  	
                  	
                  	</form>
                  
                  		
     
                </div>       
			 <!-- card-body end -->
           </div>
   			<!-- card end -->
 




<%@ include file ="../common/footer.jsp"%>