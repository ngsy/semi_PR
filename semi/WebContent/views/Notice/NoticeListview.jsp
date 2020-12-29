<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.ArrayList,com.kh.notice.model.vo.Notice" %>
<% 
	ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list");

%> 	

<%@ include file="../common/header.jsp"%>
<div class="card shadow mb-4">
	<div class="card-header py-3">
	<h2>공지사항 게시판</h2>
	</div>

	<div class="card-body">



			<nav class="navbar navbar-light bg-light" id="navibar1">

				<form class="d-flex">
					<input class="form-control me-2" id="navibar1" type="search" placeholder="Search"
						aria-label="Search" align="right">
					<button class="btn btn-outline-success" type="submit">search</button>
					
				
					
				</form>

			</nav>

	
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th scope="col">글번호</th>
						<th scope="col">글제목</th>
						<th scope="col">작성자</th>
						<th scope="col">조회수</th>
						<th scope="col">작성일</th>
					</tr>
				</thead>
				<tbody>
					<%if(list.isEmpty()){ %>
				<tr>
					<td colspan="6">조회된 리스트가 없습니다.</td>
				</tr><%}else{ %>
					<% for(Notice n : list){ %>
					<tr>
						<td><%= n.getNoticeNo() %></td>
							<td><%= n.getNoticeTitle() %></td>
							<td><%= n.getNoticeWriter() %></td>
							<td><%= n.getCount() %></td>
							<td><%= n.getCreateDate() %></td>
					</tr>
						<%} %>
				<%} %>
					
				</tbody>
			</table>

	   <br>
	   <br>
	   	
	   <br>
	   <br>
		 <div align="center">
			 <% if(loginUser != null && loginUser.getId().equals("admin")) { %>
			<button  class="btn btn-outline-success" type = "submit" onclick="location.href='<%=contextPath%>/enrollForm.no'">작성하기</button> 
			
		<% } %>
		</div>
		<br>
	   <br>
		
		<nav aria-label="Page navigation example" align="center">
			<ul class="pagination">
				<li class="page-item"><a class="page-link" href="#">Previous</a></li>
				<li class="page-item"><a class="page-link" href="#">1</a></li>
				<li class="page-item"><a class="page-link" href="#">2</a></li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
				<li class="page-item"><a class="page-link" href="#">Next</a></li>
			</ul>
		</nav>
		<script>
			$("#defaultModalBtn").on("click", function() {
				$("#defaultModal").modal("show");
			});
		</script>


	</div>


	<!-- card-body end -->
</div>



<%@ include file="../common/footer.jsp"%>

    