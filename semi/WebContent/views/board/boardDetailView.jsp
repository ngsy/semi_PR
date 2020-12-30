<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.kh.board.model.vo.*"%>
<%
	Board b = (Board) request.getAttribute("b");
Attachment at = (Attachment) request.getAttribute("at");
%>
<%@ include file="../common/header.jsp"%>



<div class="card shadow mb-4">
	<div class="card-header py-3">게시판상세보기</div>

	<div class="card-body">
         	<div class="btn3" style="margin-left:1250px;">
			<%
				if (loginUser != null && loginUser.getId().equals(b.getBoardWriter())) {
			%>
			<button class="btn btn-primary" id="updateBtn" onclick="updateForm();">수정</button>
			<button class="btn btn-danger" id="delBtn" onclick="deleteBoard();">삭제</button>
			<%
				}
			%>

		</div> <br>
         
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

			</div><!-- row -->

		</div> <!-- container -->


 <!-- 추천/신고/채팅버튼 -->
         <div class="btn1"  style="margin-left:1150px;">
         	<button class="btn btn-lg border-0  " id="sidebarBtn"  >
			<i class="far fa-thumbs-up" style="font-size: 30px;"></i>
			 </button> 
           	<button class="btn btn-lg border-0  " id="sidebarBtn"  >
			</i> <i class="fas fa-angry" style="font-size: 30px; "></i>
            </button>
            
           	<button class="btn btn-lg border-0  " id="sidebarBtn" >
            <i class="far fa-comment-dots" style="font-size: 30px;"></i>  
            </button>
         </div>



		<div class="btn2" align="center">
			<button class="btn btn-secondary"
				onclick="location.href='<%=contextPath%>/list.bo?currentPage=1';">목록으로</button>
		</div>


	<!-- 댓글 관련 영역 -->
	<div class="replyArea">
		<!-- 댓글 작성하는 div -->
		<table border="1" align="center">
			<tr>
				<th>댓글작성</th>
				<% if(loginUser != null){ %>
				<td><textarea rows="3" cols="60" id="replyContent" style="resize:none;"></textarea></td>
				<td><button id="addReply">댓글등록</button></td>
				<% }else{ %>
				<td><textarea readonly rows="3" cols="60" id="replyContent" style="resize:none;">로그인한 사용자만 가능한 서비스입니다. 로그인 후 이용해주세요</textarea></td>
				<td><button disabled>댓글등록</button></td>
				<% } %>
			</tr>
		</table>
		
		
		<!-- 댓글 리스트들 보여주는 div -->
		<div id="replyListArea">
			<table id="replyList" border="1" align="center">
				<!-- <tr>
					<td width="100px">admin</td>
					<td width="330px">댓글작성내용</td>
					<td width="150px">2020년 1월 23일</td>
				</tr>
				<tr>
					<td width="100px">user01</td>
					<td width="330px">댓글작성내용</td>
					<td width="150px">2020년 1월 22일</td>
				</tr>
				<tr>
					<td width="100px">test01</td>
					<td width="330px">댓글작성내용</td>
					<td width="150px">2020년 1월 20일</td>
				</tr> -->
			</table>
		</div>
	</div> 
	<script>
	  $(function(){
		 selectReplyList(); 
		$("#addReply").click(function(){
			var content =$("#replyContent").val();
			var bId=<%=b.getBoardNo()%>;
			
			$.ajax({
				url:"rinsert.bo",
				type:"post",
				data:{
					content:content,
					bId:bId
				},
				success:function(status){
					//console.log(status);
					
					if(status=="success"){
						selectReplyList();
						$("#replyContent").val("");
					}
				},
				error:function(){
					console.log("ajax 통신실패");
				}
			});
		}); 
		 
	  });
	  function selectReplyList(){
		  $("#replyList").empty();
		  $.ajax({
			url:"rlist.bo",
			data:{bId:<%=b.getBoardNo()%>},
			tyoe:"get",
			success:function(list){
				console.log(list);

				// 1번 방법
				var value = "";
				for(var i in list){
					value += '<tr>' + 
								'<td width="100px">' + list[i].replyWriter + '</td>' +
								'<td width="330px">' + list[i].replyContent + '</td>' + 
								'<td width="150px">' + list[i].createDate  + '</td>' + 
							 '</tr>';
				}
				
				$("#replyList").html(value);
				
				
	
			},
			error:function(){
				console.log("ajax통신실패 ")
			}
			  
		  });
	  }
	</script>






	</div>
	<!-- card-body end -->
</div>
<!-- card end -->





<%@ include file="../common/footer.jsp"%>