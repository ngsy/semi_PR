<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.report.model.vo.Report,java.util.ArrayList,java.text.SimpleDateFormat"%>
 
<%@ include file ="../common/header.jsp" %>

<%
	ArrayList<Report> list=(ArrayList<Report>)request.getAttribute("list");

%>

	        <div class="card shadow mb-4">
                  <div class="card-header py-3">
                       신고리스트     
                       
                   </div>                      
                    
                  <div class="card-body">
          
                  	<table class="table table-bordered table-hover"  width="100%" cellspacing="0">
                  		<thead>
                  			<tr>
                  			<th width="100px">신고 번호</th><th>타입</th><th>카테고리</th><th>신고한 사용자</th><th>신고 날짜</th>
                  			</tr>
                  		</thead>
                  		<tbody>
                  		
 
 			
 						<%if(!list.isEmpty()) { 
              				String type="";
              			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
              			String date="";
 						
 						%>

                  			<% for(Report r : list) {
                  			
                  			
                  				
                  				if(r.getReportType()==1){
                  					type="댓글";
                  					
                  				}else if(r.getReportType()==2){
                  					type="일반게시글";
                  				}else if(r.getReportType()==3){
                  					type="업체게시글";

                  				}else if(r.getReportType()==4){
                  					type="사용자";

                  				}
                  			
                  			 date =sdf.format(r.getReportDate());
                  			
                  			%> 
                 		<tr>
                  		<td><%= r.getReportNo() %></td><td><%=type%></td><td><%=r.getReportCategory() %></td><td><%=r.getMemNo() %></td><td><%=date%></td>
                  		
                  		</tr>
                  	
                  			<%} %>
                  		<%} else{ %>
                  			<tr>
                  			<td colspan="5">조회된 리스트가 없습니다.</td>
                  			</tr>	
                  		<%}  %>
                  		</tbody>
                  	
                  	</table>
                  		
     
                </div>       
			 <!-- card-body end -->
           </div>
   			<!-- card end -->
                    
	<script>
	$(function(){
		$("tbody>tr").on("click",function(){
			
			var rno=$(this).children().eq(0).text();
			location.href="<%=request.getContextPath()%>/detail.re?rno="+rno;
		});
		
	});
		
	
	</script>


<%@ include file ="../common/footer.jsp" %>