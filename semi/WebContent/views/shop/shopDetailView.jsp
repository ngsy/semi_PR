<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.ArrayList,com.kh.board.model.vo.*, com.kh.shop.model.vo.*"%>
<%
	Shop s = (Shop) request.getAttribute("s");
     ArrayList<Attachment> fileList=(ArrayList<Attachment>)request.getAttribute("fileList");
%>
<%@ include file="../common/header.jsp"%>



<div class="card shadow mb-4">
	<div class="card-header py-3">게시판상세보기</div>

	<div class="card-body">
         	<div class="btn3" style="margin-left:70%;">
			<%
				if (loginUser != null && loginUser.getId().equals(s.getShopWriter())) {
			%>
	<!-- 	<button class="btn btn-primary" id="updateBtn" onclick="updateForm();">수정</button> -->	
			<button class="btn btn-danger" id="delBtn" onclick="deleteBoard();">삭제</button>
			<%
				}
			%>

		</div> <br>
		
			<form action="" id="postForm" method="post">
			<input type="hidden" name="sNo" value="<%= s.getShopNo() %>">
		</form>
		<script>
			function updateForm(){
				$("#postForm").attr("action", "<%=contextPath%>/updateForm.bo");
				$("#postForm").submit();
			}
			
			function deleteBoard(){
				
				 if (confirm("정말 삭제하시겠습니까?"))
		   	     $("#postForm").attr("action", "<%=contextPath%>/deleteS.bo");
				 $("#postForm").submit();
			}
		</script>
         
		<div class="container">
			<div class="row ">
		
<div class="panel panel-default ">
   <div class="panel-heading"  style="background:#fff;">우리가게사진 </div>
 
  <% for(int i=1; i<fileList.size(); i++){ %>
   <div class="panel-body" style="display:inline-block;"  >
      <span ><img width="300px" height="250px" src="<%=contextPath%>/resources/board_upfiles/<%=fileList.get(i).getChangeName()%>" class="mg-fluid">  </span>
     
     </div>
	<% } %>
   
</div>


	
	
				<table class="table table-striped"
					style="text-align: center; boarder: 1px solid #dddddd">
					<thead>
						<tr>
							<th colspan="3" style="text-align: center"><%=s.getShopTitle()%></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td style="width: 20%; text-align: left">작성자|</td>
							<td colspan="2" style="text-align: left"><%=s.getShopWriter()%> 
							
							
							</td>
						</tr>
						<tr>
							<td style="width: 20%; text-align: left">작성일자|</td>
							<td colspan="2" style="text-align: left"><%=s.getCreateDate()%></td>
						</tr>
	
	                    <tr>
							<td style="width: 20%; text-align: left">주소|</td>
							<td colspan="2" style="text-align: left"><%=s.getDetailLocation()%>		</td>

						</tr>
						 <tr>
							<td style="width: 20%; text-align: left">전화번호|</td>
							<td colspan="2" style="text-align: left"><%=s.getPhoneNo()%>		</td>

						</tr>
						<tr>
							<td style="width: 20%; text-align: left">우리가게소개|</td>
							<td colspan="2" style="height: 200px; text-align: left"><%=s.getShopContent()%> </td>

						</tr>
	

					</tbody>
</table>


			</div><!-- row -->

		</div> <!-- container -->
		
		


 <!-- 추천/신고/채팅버튼 -->
          <!-- 추천-->
       <!--  <div class="btn1"  style="margin-left:1150px;">
         	<button class="btn btn-lg border-0  " id="likeBtn"  >
			<i class="far fa-thumbs-up" style="font-size: 30px;"></i>
			 </button> -->
			 <!-- 신고-->
           	<button class="btn btn-lg border-0  " id="angryBtn"  >
			</i> <i class="fas fa-angry" style="font-size: 30px; "></i>
            </button>
             <!-- 채팅-->
           	<button class="btn btn-lg border-0  " id="chatBtn" >
            <i class="far fa-comment-dots" style="font-size: 30px;"></i>  
            </button>
         </div>



		<div class="btn2" align="center">
			<button class="btn btn-secondary"
				onclick="location.href='<%=contextPath%>/list.sh';">목록으로</button>
		</div>
<br>
<br>




	</div>
	<!-- card-body end -->
</div>
<!-- card end -->





<%@ include file="../common/footer.jsp"%>