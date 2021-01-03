<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.kh.qna.model.vo.*" %>
<%
Qna q =(Qna)request.getAttribute("qna"); 
%>
<%@ include file="../common/header.jsp"%>

<!DOCTYPE html>
<html>

<div class="card shadow mb-4">
	<div class="card-header py-3">우리마을 게시글</div>

	<div class="card-body">

		<div class="container">

			<form id="updateForm" action="<%=contextPath%>/update.qo"" method="post">
			<input type="hidden" name="qno" value="<%= q.getQnaNo() %>">
				<div class="form-group">
					<label for="title">제목</label> <input type="text"
						class="form-control" placeholder="title" id="title" name="title" value="<%= q.getQnaTitie() %>">
				</div>



				<div class="form-group">
					<label for="content">내용</label>
					<textarea class="form-control" rows="5" id="summernote"
						name="content"><%= q.getQnaContent() %></textarea>
				</div>


				<button type="submit" class="btn btn-primary">글수정 </button>
				<button type="reset" class="btn btn-danger">취소하기</button>
			</form>
		</div>
		<script>
			
		</script>

	</div>



	<!-- card-body end -->
</div>
    