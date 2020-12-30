<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.notice.model.vo.*"%>
<%
	Notice n = (Notice) request.getAttribute("n");
%>
<%@ include file="../common/header.jsp"%>



<div class="card shadow mb-4">
	<div class="card-header py-3">게시판상세보기</div>

	<div class="card-body">

		<div class="container">
			<div class="row ">
			
			<table class= "table table-striped" style="text-align:center;boarder:1px solid #dddddd" >
			    <thead>
			    <tr>
			       <th colspan="3" style="text-align:center"><%= n.getNoticeTitle() %></th>
			    </tr>
			       </thead>
			    <tbody>  
			    <tr>
			      <td style="width:20%; text-align:left">작성자|</td>
			      <td colspan="2" style="text-align:left"><%= n.getNoticeWriter() %></td>
			    </tr>
			    <tr>
			      <td style="width:20%; text-align:left">작성일자|</td>
			      <td colspan="2" style="text-align:left"><%= n.getCreateDate() %></td>
			    </tr>
			    
			    
			     <tr>
			      <td style="width:20%; text-align:left">내용|</td>
			      <td colspan="2" style=" height:500px; text-align:left"><%= n.getNoticeContent() %>
			
			      </td>
			      
			    </tr>
			  
			</tbody> 
			</table>
			 
			
			</div>


		</div>




		<div class="btn1" align="center">
			<button class="btn btn-secondary"
				onclick="location.href='<%=contextPath%>/list.no?currentPage=1';">목록으로</button>

		</div>

		<div class="btn2" align="right">
			<%
				if (loginUser != null && loginUser.getId().equals(n.getNoticeWriter())) {
			%>
			<button class="btn btn-primary" id="updateBtn"
				onclick="updateForm();">수정</button>
			<button class="btn btn-danger" id="delBtn" onclick="deleteBoard();">삭제</button>
			<%
				}
			%>

		</div>







	</div>


	<!-- card-body end -->
</div>
<!-- card end -->





<%@ include file="../common/footer.jsp"%>