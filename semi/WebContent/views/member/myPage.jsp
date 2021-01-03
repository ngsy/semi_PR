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
	String originPwd =(String)session.getAttribute("originPwd");

	String phone =loginUser.getPhone();
	String email =loginUser.getEmail();


%>


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
				      <a class="list-group-item list-group-item-action active" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">내정보수정</a>
				      <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="list" href="#list-profile" role="tab" aria-controls="profile">비밀번호변경</a>
				      <a class="list-group-item list-group-item-action" id="list-messages-list" data-toggle="list" href="#list-messages" role="tab" aria-controls="messages">회원탈퇴</a>
			</div>
				  </div>
				  <div class="col-8">
				    <div class="tab-content" id="nav-tabContent">
				     
				<div class="tab-pane fade show active" id="list-home" role="tabpanel" aria-labelledby="list-home-list"><input type=text>
				
	<form id="updateForm" action="<%=request.getContextPath()%>/update.me" method="post">
			<table>
				<tr>
					<td width="200px"> 아이디</td>
					<td><input type="text" maxlength="13" name="userId"
						value=<%=userId%> readonly></td>

				</tr>

				<tr>
					<td> 이름</td>
					<td><input type="text" maxlength="5" name="userName"
						value="<%=userName%>" required></td>
					<td></td>
				</tr>
				<tr>
					<td>연락처</td>
					<td><input type="tel" maxlength="11" name="phone"
						placeholder="(-없이)01012345678" value="<%=phone%>"></td>
					<td></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="email" name="email" value="<%=email%>"></td>
					<td></td>
				</tr>
			
						</table>
				      <div>
				      	<button type="submit" id="updateBtn" >수정하기</button>
				        
				        </div>
				        
				         </form>  
				      </div>
				     <!-- 정보수정 끝 -->
				     
				
				     
				     
				     
				     
				     
				     
				     
				     
				     
				      <div class="tab-pane fade" id="list-profile" role="tabpanel" aria-labelledby="list-profile-list">비밀번호변경</div>
				      <div class="tab-pane fade" id="list-messages" role="tabpanel" aria-labelledby="list-messages-list">회원탈퇴</div>
				    </div>
				  </div>
				</div>      
					<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	          
        
                </div>       
			 <!-- card-body end -->
           </div>
   			<!-- card end -->






























 <%@ include file ="../common/footer.jsp" %>