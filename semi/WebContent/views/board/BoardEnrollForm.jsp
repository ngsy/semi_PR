<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ include file="../common/header.jsp"%>

<!DOCTYPE html>
<html>  

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
  <script >

  </script>

	</div>



	<!-- card-body end -->
</div>



    <script>
    $('#summernote').summernote({
        placeholder: "내용을넣어주세요",
        tabsize: 2,
        height: 120,
       
        toolbar: [
          ['style', ['style']],
          ['font', ['bold', 'underline', 'clear']],
          ['color', ['color']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['table', ['table']],
          ['insert', ['link', 'picture', 'video']],
          ['view', ['fullscreen', 'codeview', 'help']]
        ]
      });
    </script>


<%@ include file="../common/footer.jsp"%>





