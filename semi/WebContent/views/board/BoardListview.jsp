<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList,com.kh.board.model.vo.*" %>

<% 
	ArrayList<Board> list = (ArrayList<Board>)request.getAttribute("list");
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	
%> 	
	
<%@ include file="../common/header.jsp"%>

<div class="card shadow mb-4">
	<div class="card-header py-3">
				<h2  >우리마을 게시판</h2>
</div>

	<div class="card-body">



			<nav class="navbar navbar-light bg-light" id="navibar1">

				<form class="d-flex">
					<input class="form-control me-2" id="navibar1" type="search" placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
         	<a href="BoardEnrollForm.jsp" class="btn btn-primary float-right" >글쓰기</a>
			</nav>
        
	
			<table class="table table-striped table-hover listArea" >
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
					<% for(Board b : list){ %>
					<tr>
						<td scope="row"><%= b.getBoardNo() %></td>
						<td><%= b.getBoardTitle() %></td>
						<td><%= b.getBoardWriter() %></td>
						<td><%= b.getReadCount() %></td>
						<td><%= b.getCreateDate() %></td>
					</tr>
						<%} %>
				<%} %>
				</tbody>
			</table>


	   
	   <br>
	   <br>
	   <br>
	   <br>
	   
	<!-- 페이징바 만들기 -->
		<div class="pagingArea" align="center">
			<!-- 맨 처음으로 (<<) -->
			<button onclick="location.href='<%=contextPath%>/list.bo?currentPage=1'"> &lt;&lt; </button>
		
			<!-- 이전페이지로(<) -->
			<%if(currentPage == 1){ %>
			<button disabled> &lt; </button>
			<%}else{ %>
			<button onclick="location.href='<%= contextPath %>/list.bo?currentPage=<%= currentPage-1 %>'"> &lt; </button>
			<%} %>
			
			<!-- 페이지 목록 -->
			<%for(int p=startPage; p<=endPage; p++){ %>
				
				<%if(p == currentPage){ %>
				<button disabled> <%= p %> </button>
				<%}else{ %>
				<button onclick="location.href='<%=contextPath %>/list.bo?currentPage=<%= p %>'"> <%= p %> </button>
				<%} %>
				
			<%} %>
			
			<!-- 다음페이지로(>) -->
			<%if(currentPage == maxPage){ %>
			<button disabled> &gt; </button>
			<%}else { %>
			<button onclick="location.href='<%= contextPath %>/list.bo?currentPage=<%= currentPage+1 %>'"> &gt; </button>
			<%} %>
		
			<!-- 맨 끝으로 (>>) -->
			<button onclick="location.href='<%=contextPath%>/list.bo?currentPage=<%=maxPage%>'"> &gt;&gt; </button>
		</div> 
		<br><br>
		<div align="center">
		<% if(loginUser != null){ %>
		<button onclick="location.href='enrollForm.bo'">작성하기</button>
		<% } %>
		</div>
	</div>
	
	<script>
		<%if (!list.isEmpty()) {%>
		$(function(){
			$(".listArea>tbody>tr").click(function(){
				var bno = $(this).children().eq(0).text();
				//console.log(nno);
				
				// 쿼리 스트링을 이용하여 get방식으로(url 노출) 글번호를 server로 전달
				location.href="<%= contextPath %>/detail.bo?bno=" + bno;
			});
		});
		<%} %>
		
		
		
	</script>
		<nav aria-label="Page navigation example" id="pagingnav">
			<ul class="pagination"  >
				<li class="page-item"><a class="page-link" href="#">Previous</a></li>
				<li class="page-item"><a class="page-link" href="#">1</a></li>
				<li class="page-item"><a class="page-link" href="#">2</a></li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
				<li class="page-item"><a class="page-link" href="#">Next</a></li>
			</ul>
		</nav>



	</div>


	<!-- card-body end -->
</div>



<%@ include file="../common/footer.jsp"%>






