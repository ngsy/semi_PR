<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>


<div class="card shadow mb-4">
	<div class="card-header py-3">우리마을 게시글 등록</div>

	<div class="card-body">

		<div class="container">

			<form action="" method="post">
				<div class="form-group">
					<label for="title">title:</label> <input type="text"
						class="form-control" placeholder="title" id="title" name="title">
				</div>
				<div class="form-group">
					<label for="content">content:</label>
					<textarea class="form-control" rows="5" id="summernote" name="content"></textarea>
				</div>
				<button type="submit" class="btn btn-primary">글쓰기 등록</button>
			</form>
		</div>
		
		
		<script>
			$(document).ready(function() {
				$('#summernote').summernote({
					placeholder : 'content',
					minHeight : 370,
					maxHeight : null,
					focus : true,
					lang : 'ko-KR'
				});
			});
		</script>


	</div>


	<!-- card-body end -->
</div>



<%@ include file="../common/footer.jsp"%>








