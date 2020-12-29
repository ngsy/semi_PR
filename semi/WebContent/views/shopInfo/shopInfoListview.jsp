<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<div class="card" style="width: 18rem;">
			<img src="..." class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">Card title</h5>
				<p class="card-text">Some quick example text to build on the
					card title and make up the bulk of the card's content.</p>
				<a href="#" class="btn btn-primary">Go somewhere</a>
			</div>
		</div>



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






