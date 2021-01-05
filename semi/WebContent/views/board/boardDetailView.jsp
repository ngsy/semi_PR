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
							<td colspan="2" style="height: 500px; text-align: left">
							<%if(at !=null) {%> 
							<p ><img width="300px" height="250px" src="<%=contextPath%>/resources/board_upfiles/<%=at.getChangeName()%>" class="mg-fluid">  </p>
                            <p><%=b.getBoardContent()%></p>
                            </td>
                           	<%
									} else {
								%><p><%=b.getBoardContent()%></p> <%
									}
								%>
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



	<!-- 댓글 관련 영역 -->



 <div  style="background:#fff;  border-line:none;">
		<!-- 댓글 작성하는 div -->
	
			
				<% if(loginUser != null){ %>
					
				<div class="input-group mb-3" style="width:800px; margin-left:30%;">
				
				
				  <textarea class="form-control" id="replyContent"  style="resize:none; text-align:left;"  rows="3" placeholder="댓글을 작성해주세요"></textarea>	  
			
				 <button type="submit" class="btn btn-primary mb-3"id="addReply" "> 등록</button>

				</div>
				
				<% }else{ %>
				<div class="input-group mb-3" style="width:800px; ">
				<textarea class="form-control" id="replyContent"  style="resize:none; text-align:center;"  rows="3" placeholder="로그인 후  댓글을 작성해 주세요"></textarea>
					</div>
				<% } %>
	
		
	
		<!-- 댓글 리스트들 보여주는 div -->

			<table class="table" id="replyList" align="center"  style="width:800px; " >
		  <tbody>
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
				success:function(){

					
					
					
						selectReplyList();
						$("#replyContent").val("");
						
				

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
			type:"get",
			success:function(list){
				console.log(list);
                var writer='{}'
			
				var value = "";
				for(var i in list){
					value += '<tr class="">' + 
								'<td width="100px" height="150px" ">작성자|<br>' + list[i].replyWriter+'<br>'+'<div style=" font-size:5px; color:#7CAA7A;">' +list[i].createDate+'</div>' + '</td>' +
								'<td width="200px" height="150px">' + list[i].replyContent + '</td>' + 
								'<td width="100px" >' +'<button class="btn btn-danger" id="delRBtn" onclick="" style="width:50px; font-size:5px;"> 삭제 </button>'
							 	+'<button class="btn btn-lg border-0  " id="angrybutton"></i> <i class="fas fa-angry" style="font-size: 25px; "></i></button>' +'</td>' + 
							
							 '</tr>';
				}
				
				   $("#replyList").html(value);
				
				
	
			},
			error:function(){
				console.log("댓글실패 ");
			}
			  
		  });
	  }
	</script>
	
	<script>

$("#replyList").on("click","#delRBtn",function(){
	alert("댓글삭제클릭");
	var item=$(this).closest(".datarow");
	var rno=item.find(".rno").text();
	$("#delrno").val(rno);
	//비밀번호 지우기
	$("#delpw").val("");

});

$("#replyDelBtn").click(function(){
	var reply={
			rno:$("#delrno").val(),
			pw:$("#delpw").val(),
			
	}
	$.ajax({
		type:"post",
		data:reply,
		url:"rdelte.bo",
		dataType:"text",
		success:function(result,status,xhr){
		alert(result);	
		},
		error:function(xhr,status,error){
			console.log("ajax 통신실패");
			  alert("댓글삭제중 오류가 발생하였씁니다 ");
			  alert(xhr+ status+error);
		}
	});
});
</script>
		</div>
		<!-- card-body end -->
	</div>
	<!-- card end -->


	<%@ include file="../common/footer.jsp"%>