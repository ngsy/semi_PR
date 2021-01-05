<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file ="../common/header.jsp" %>

	<%

//Member m =(Member)request.getAttribute("loginUser");	
	
	System.out.println("loginUser "+ loginUser);
	System.out.println("m.getId: "+ loginUser.getId());
	
	String userId = loginUser.getId();
	String userPwd = loginUser.getPwd();
	String userName = loginUser.getM_name();
	String phone =loginUser.getPhone();
	String email =loginUser.getEmail();
	

	String originPwd=(String)session.getAttribute("originPwd");
	
	String alarm =(String)request.getAttribute("alarm");
	
	System.out.println("orginPwd 마이페이지:  "+originPwd);
	
	String pwdCk ="";

%>


<!-- 알림창 -->
<script>


	var alarm = "<%= alarm %>";
	$(function(){
		if(alarm != "null"){
			alert(alarm);
		}
	
	});
</script>


  		<div class="card shadow mb-4">
         <div class="card-header py-3" align="center">
                    <h5> 마이페이지 </h5>
         </div>                      
		                    	
			 <div>
			<i class="far fa-user-circle fa-5x"></i>
			<b/> <%=loginUser.getM_name()%> 님<b/>
			 <hr>
			</div>                  
		          
     
     
		<div class="card-body">
			<div class="row" >
				  <div class="col-4">
				    <div class="list-group" id="list-tab" role="tablist">
				      <a class="list-group-item list-group-item-action active" id="list-updateForm-list" data-toggle="list" href="#list-updateForm" role="tab" aria-controls="home">내정보수정</a>
				      <a class="list-group-item list-group-item-action" id="list-updatePwd-list" data-toggle="list" href="#list-updatePwd" role="tab" aria-controls="profile">비밀번호변경</a>
				      <a class="list-group-item list-group-item-action" id="list-deleteMember-list" data-toggle="list" href="#list-deleteMember" role="tab" aria-controls="messages">회원탈퇴</a>
			</div>
				  </div>
				  <div class="col-8">
				    <div class="tab-content" id="nav-tabContent">
				     
				<div class="tab-pane fade show active" id="list-updateForm" role="tabpanel" aria-labelledby="list-home-list">
				
	<form id="updateForm" action="<%=request.getContextPath()%>/update.me" method="post">
	
			<table align="center">
				<tr>
					<td width="200px"> 아이디</td>
					<td><input type="text" class="form-control"  maxlength="13" name="userId"
						value=<%=userId%> readonly></td>
					
				</tr>
			
				
				<tr>
					<td> 이름</td>
					<td><input type="text" class="form-control"  maxlength="5" name="userName"
						value="<%=userName%>" required></td>
					<td></td>
				</tr>
				
	
				<tr>
					<td>연락처</td>
					<td><input type="tel" class="form-control"  maxlength="11" name="phone"
						placeholder="(-없이)01012345678" value="<%=phone%>"></td>
					<td></td>
				</tr>
				
				<tr>
					<td>이메일</td>
					<td><input type="email" class="form-control"  name="email" value="<%=email%>"></td>
					<td></td>
				</tr>
			
						</table>
						
						
						<br><br>
				      <div align="center">
				      	<button type="submit" class="btn btn-primary btn-primary" id="updateBtn"  >수정하기</button>
				        
				        </div>
				        
				         </form>  
				      </div>
				     <!-- 정보수정 끝 -->
				     
		     
				     
	  				<!-- 비밀번호변경 시작 -->
				      <div class="tab-pane fade" id="list-updatePwd" role="tabpanel" aria-labelledby="list-profile-list">
				      
				      	<form id="updatePwdForm" action="<%= request.getContextPath() %>/updatePwd.me" method="post">
							
							pwdCk =prompt("비밀번호를 입력해주새요");
							
							<table align="center">
								<tr>
									<td><label>현재 비밀번호</label>
									<td><input type="password" class="form-control"  name="userPwd" id="userPwd"></td>
								</tr>
								<tr>
									<td><label>변경할 비밀번호</label></td>
									<td><input type="password"class="form-control"  name="newPwd"></td>
								</tr>
								<tr>
									<td><label>변경할 비밀번호 확인</label></td>
									<td><input type="password" class="form-control"  name="checkPwd"></td>
								</tr>
							</table>
							
							
								<br>
								<br>
								
								<div class="btns" align="center">
									<div id="updatePwdBtn" class="btn btn-primary btn-primary"  onclick="checkPwd();">변경하기</div>
								</div>
										      
				      
				      
				      </div>
				      <!-- 비밀번호변경 끝 -->
				      
				      
				      
				      <div class="tab-pane fade" id="list-deleteMember" role="tabpanel" aria-labelledby="list-messages-list">회원탈퇴</div>
				    </div>
				  </div>
				</div>      
					<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	          
        
                </div>       
			 <!-- card-body end -->
           </div>
   			<!-- card end -->

	
	
	
	
	
<!-- 비밀번호변경 함수 -->	
	<script>
		function checkPwd(){
			
			var userPwd = $("#userPwd");
			var newPwd = $("input[name='newPwd']");
			var checkPwd = $("input[name='checkPwd']");
			
			if( newPwd.val().trim() == "" || checkPwd.val().trim() == ""){
				alert("비밀번호를 입력해주세요");
				return;
			}
			
			if(newPwd.val() != checkPwd.val()){
				alert("비밀번호가 다릅니다.");
				checkPwd.val('');
				checkPwd.focus();
				return;
			} 
			
		
			
			$("#updatePwdForm").submit();
		}
		
	
	</script>


























 <%@ include file ="../common/footer.jsp"%>

