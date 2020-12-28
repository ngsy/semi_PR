<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
					<tr>
						<th scope="row">1</th>
						<td>첫예시입니다</td>
						<td>이윤해</td>
						<td>1</td>
						<td>2020/12/25</td>
					</tr>
				
				</tbody>
			</table>


	   
	   <br>
	   <br>
	   <br>
	   <br>
	   

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






