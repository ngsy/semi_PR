<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.ArrayList , com.kh.shop.model.vo.*"%>
	
<%ArrayList<Shop> list=(ArrayList<Shop>)request.getAttribute("list"); %>
<%@ include file="../common/header.jsp"%>

<div class="card shadow mb-4">
	<div class="card-header py-3">우리동네 가게</div>

	<div class="card-body">
	
	
	<nav class="navbar navbar-light bg-light" id="navibar1">
			<form class="d-flex">
				<input class="form-control me-2" id="navibar1" type="search"
					placeholder="Search" aria-label="Search" >
				<button class="btn btn-outline-success" type="submit">Search</button>
			</form>
			
				<% if(loginUser != null){ %>
         	<a href="enrollForm.sh" class="btn btn-primary float-right" >글쓰기</a>
         	<% } %>
		</nav>




	<%if(list.isEmpty()){ %>
<p>조회된 리스트가 없습니다.</p>
			<%}else{ %>
			<%for(Shop s : list){ %>
<div class="row row-cols-1 row-cols-md-3 g-4 thumbnail">
<input type="hidden" value="<%=s.getShopNo()%>">

    <div class="col thumbnail" >
    <div class="card h-100 thumbnail">
      <img src="<%=contextPath %>/resources/board_upfiles/<%= s.getTitleImg() %>" width="80px" height="150px"class="card-img-top" alt="...">
      <div class="card-body thumbnail">
        <h5 class="card-title"><%=s.getShopTitle() %></h5>
        <p class="card-text"><%=s.getDetailLocation()%></p>
      </div>
    </div>
  </div>

  
</div>


	
<%} %>
	
<%} %>








</div>

	<!-- card-body end -->
</div>
	
			<script>
		
			$(function(){
				$(".thumbnail").click(function(){
					var bId = $(this).children().eq(0).val();
					location.href="<%=contextPath%>/detail.sh?bId=" + bId;
				});
			});
		</script>
	
	

<%@ include file="../common/footer.jsp"%>






