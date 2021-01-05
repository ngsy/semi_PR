<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="java.util.ArrayList,com.kh.board.model.vo.*, com.kh.shop.model.vo.*"%>

<%
	Board b = (Board) request.getAttribute("b");
Attachment at = (Attachment) request.getAttribute("at");
Reply r = (Reply) request.getAttribute("r");
%>
<%@ include file="../common/header.jsp"%>



<div class="card shadow mb-4">
	<div class="card-header py-3"><h2>게시물상세보기<h2></h2></div>

	<div class="card-body">
		
		<br>

		<form action="" id="postForm" method="post">
			<input type="hidden" name="bno" value="<%=b.getBoardNo()%>">
		</form>
		<script>
			function updateForm(){
				$("#postForm").attr("action", "<%=contextPath%>/updateForm.bo");
				$("#postForm").submit();
			}
			
			function deleteBoard(){
				
				 if (confirm("정말 삭제하시겠습니까?"))
		   	     $("#postForm").attr("action","<%=contextPath%>/deleteB.bo");
				$("#postForm").submit();
			}
		</script>

		<div class="container">
			<div class="row ">

				<table class="table table-striped"
					style="text-align: center; boarder: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="3" style="text-align: center"><%=b.getBoardTitle()%></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td style="width: 20%; text-align: left">작성자|</td>
							<td colspan="2" style="text-align: left"><%=b.getBoardWriter()%>
											<!-- 신고-->
								<button class="btn" id="angryBtn">
									</i> <i class="fas fa-angry" ></i>
								</button>
								<!-- 채팅-->
								<% if(loginUser.getM_no()!= b.getBoardWriterNo()){%>
								<button class="btn" id="chatBtn" data-mno2="<%=b.getBoardWriterNo() %>" data-mname="<%=b.getBoardWriter()%>">
									<i class="far fa-comment-dots" ></i>
								</button>
								<%} %>
							</td>
						</tr>
						<tr>
							<td style="width: 20%; text-align: left">작성일자|</td>
							<td colspan="2" style="text-align: left"><%=b.getCreateDate()%></td>
						</tr>
						<tr>
							<td style="width: 20%; text-align: left">첨부파일|</td>
							<td colspan="2" style="text-align: left">
								<%
									if (at != null) {
								%> <a download="<%=at.getOriginName()%>"
								href="<%=contextPath%>/resources/board_upfiles/<%=at.getChangeName()%>"><%=at.getOriginName()%></a>
								<%
									} else {
								%> 첨부파일이 없습니다. <%
									}
								%>
							</td>
						</tr>

						<tr>
							<td style="width: 20%; text-align: left">내용|</td>
							<td colspan="2" style="height: 500px; text-align: left"><%=b.getBoardContent()%>

							</td>

						</tr>

					</tbody>
				</table>

			</div>
			<!-- row -->

		</div>
		<!-- container -->





 		<div>
 			<%
				if (loginUser != null && loginUser.getM_no()==b.getBoardWriterNo()) {
			%>
			<button class="btn btn-primary float-left" id="updateBtn"
				onclick="updateForm();">수정</button>
			<button class="btn btn-danger float-left" id="delBtn" onclick="deleteBoard();">삭제</button>
			<%
				}
			%>
 		
 			<button class="btn btn-lg border-0  float-right" id="likeBtn">
				<i class="far fa-thumbs-up" style="font-size: 30px;"></i>
			</button>
			
			<button class="btn btn-lg border-0 float-right " id="angryBtn">
				</i> <i class="fas fa-angry" style="font-size: 30px;"></i>
			</button>
 		
 		
 		</div>


		<div class="btn2" align="center">
			<button class="btn btn-secondary"
				onclick="location.href='<%=contextPath%>/list.bo?currentPage=1';">목록으로</button>
		</div>
		<br> <br>

		<div class="panel panel-default">
			<div class="panel-heading">
				댓글 <span class="pull-right">
					<button type="button" class="btn btn-primary btn-xs"
						data-toggle="modal" data-target="#replyModal">쓰기</button>
				</span>
			</div>
			<div class="panel-body">
				<ul class="list-group" id="replyList">
				
				</ul>
			</div>
		</div>

		<!-- Modal시작ㄴ-->
		<div class="modal fade" id="replyModal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
					
						<h4 class="modal-title">댓글작성</h4>
					</div>

					<div class="modal-body" >
						<form id="replyWriteForm">
							<!-- 글번호 입력  -->
							<input type="hidden" class="form-control" id="no" name="no"	value="<%=b.getBoardNo()%>" />
							<!-- 내용 입력  -->
							<div class="form-group">
								<label for="content">내용</label>
								<textarea class="form-control" rows="3" id="content"
									name="content" required="required"></textarea>
							</div>
							<!-- 작성자입력-->
							<div class="form-group">
								<label for="writer">작성자</label>
								<textarea type="text" class="form-control" id="writer"
									name="writer" required="required"></textarea>
							</div>
							<!-- 비번입력-->
							<div class="form-group">
								<label for="pw">비밀번호</label>
								<textarea type="text" class="form-control" id="pw" name="pw"
									required="required"></textarea>
							</div>
						</form>
					</div>
					<div class="modal-footer">
						<div class="btn-group">
						    <button type="button" class="btn btn-outline-primary" id="replyWriteBtn" >쓰기</button>
						    <button type="reset" class="btn btn-outline-primary" id="replyReset" >새로입력</button>
							<button type="button" class="btn btn-outline-primary"  data-dismiss="modal">취소</button>
						</div>
					</div>
					</div>
<!-- modal contents끝-->
				</div>
			</div>

<!-- modal 끝-->


<script>
	  $(function(){
		  
		  $("#replyList")
	
		$("#replyWriteBtn").click(function(){
			var no=$("#no").val();
			var content =$("#content").val();
			var writer =$("#writer").val();
			var pw =$("#pw").val();
		
			var reply={
				no:no,
			content:content,
			writer:writer,
			pw:pw
			}
			$.ajax({
				url:"rinsert.bo",
				type:"post",
				data:{reply
				},
				success:function(){
					//console.log(status);
				  alert("성공적으로 댓글이 등록되었습니다");
				  //댓글리스트 뿌려주기 
					$("#replyList").load("replayList.jsp?no="+"<%=b.getBoardNo()%>");
				
					
				},
				error:function(){
					console.log("ajax 통신실패");
					  alert("성공적으로 댓글이 등록되었습니다");
				}
			});
			clear();
			$("#replyModal").modal("hide");
		
		}); 
		$("#replyReset").click(function(){
			clear();
		});
		function clear(){
			$("#content").val("");
			$("#writer").val("");
			$("#pw").val("");
		}
		 
	  });

	  </script>


		</div>
		<!-- card-body end -->
	</div>
	<!-- card end -->





	<%@ include file="../common/footer.jsp"%>