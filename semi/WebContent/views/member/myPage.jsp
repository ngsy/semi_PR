<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="../common/header.jsp" %>





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
      <div class="tab-pane fade show active" id="list-home" role="tabpanel" aria-labelledby="list-home-list">내정보수정</div>
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