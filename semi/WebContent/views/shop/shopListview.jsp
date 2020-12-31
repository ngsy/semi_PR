<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.ArrayList , com.kh.shopInfo.model.vo.*"%>
	
<%ArrayList<Shop> list=(ArrayList<Shop>)request.getAttribute("list"); %>
<%@ include file="../common/header.jsp"%>

<div class="card shadow mb-4">
	<div class="card-header py-3">우리동네 가게</div>

	<div class="card-body">
	<nav class="navbar navbar-light bg-light" id="navibar1">
			<form class="d-flex">
				<input class="form-control me-2" id="navibar1" type="search"
					placeholder="Search" aria-label="Search" align="right">
				<button class="btn btn-outline-success" type="submit">Search</button>
			</form>
		</nav>
		
		
		
		
		<br>
		<div class="card listArea" style="width: 18rem;">
		<%if(list.isEmpty()){ %>
		
		<p>조회된 리스트가 없습니다.</p>
			<%}else{ %>
		
		<%for(Shop s : list){ %>
			<img src="<%=contextPath %>/resources/board_upfiles/<%= s.getTitleImg() %>" width="200px" height="150px"class="card-img-top" alt="...">
			<div class="card-body thumbnail">
			<input type="hidden" value="<%=s.getShopNo()%>">
				<h5 class="card-title"><%=s.getShopTitle() %></h5>
				<p class="card-text">Some quick example text to build on the
					card title and make up the bulk of the card's content.</p>
				<a href="#" class="btn btn-primary">Go somewhere</a>
			</div>
		</div>
<%} %>
<%} %>


	</div>


	<!-- card-body end -->
</div>



<%@ include file="../common/footer.jsp"%>






