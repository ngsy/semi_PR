<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file ="../common/header.jsp" %>
     

 		<div class="card shadow mb-4">
            <div class="card-header py-3">
                            

                   <h2 class="mb-3" align="center">회원가입</h2>
        <!-- 헤더부분 -->           
        	</div>                      

                    
        <div class="card-body">
            
                  
        <form id="enrollForm"action="<%=request.getContextPath()%>/insert.me" method="post"
         onsubmit="return joinValidate();">
         <table align="center" >
             <tr>
               <td>이름</td>   <!-- required : 필수 -->
               <td><input type="text"  class="form-control" maxlength="5" name="userName" required></td>
               <td></td>
            </tr>
            <tr>
               <td  width="200px"><label class="form-label">아이디</label></td>
               <td><input type="text"  class="form-control" maxlength="13" name="userId" required></td>
               <td width="200px">
                  <button type="button" class="btn btn-outline-primary" id="idCheckBtn" onclick="checkId();">중복확인</button>
               </td>
            </tr>
            
            <br>
            
            <tr>
               <td>비밀번호</td>
               <td><input type="password"  class="form-control" maxlength="15" name="userPwd"
                  required></td>
               <td><label id="pwdResult"></label></td>
               <td></td>
            </tr>
            
            <tr>
               <td>비밀번호 확인</td>
               <td><input type="password"  class="form-control" maxlength="15" name="checkPwd"
                  required></td>
                  
               <td></td>
            </tr>
     
            <tr>
               <td>휴대폰 번호</td>
               <td><input type="tel"  class="form-control"  maxlength="11" name="phone"
                  placeholder="(-없이)01022222222"></td>
               <td></td>
            </tr>
      
            <tr>
               <td>이메일</td>
               <td><input type="email" class="form-control"  name="email" placeholder="example@naver.com"></td>
               <td width="200px">

                    <button data-toggle="modal" data-target="#emailCheck" class="btn btn-outline-primary"  >인증하기</button>

               </td>
               <td></td>
            </tr>
            <tr>
               <td>주소</td>
               <td><input type="text"  class="form-control"  name="address"></td>
               <td></td>
            </tr>
             <td></td>
            <tr>
           <td>내위치 조회</td>
    
           <td><button  class="btn btn-primary " onclick="#">조회</button><td>
           
            </tr>
  
         </table>
         <br><br><br><br>
         
         

        <div align="center">
         

            <button type="submit" class="btn btn-primary btn-success" id="joinBtn" >가입하기</button>

         </div>
        
      </form>
      
      
      </div>
        <!-- 바디부분 끝 -->
    </div>
    <!-- 카드 끝 --> 






<!--  modal-->
        
 
        <div class="portfolio-modal modal fade" id="emailCheck" tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label" aria-hidden="true">
            <div class="modal-dialog modal-xl" role="document">
                <div class="modal-content">
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"><i class="fas fa-times"></i></span>
                    </button>
                    <div class="modal-body text-center">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <!-- Portfolio Modal - Title-->
                                    <br>
                                    <h3 class="portfolio-modal-title text-secondary text-uppercase mb-0" id="portfolioModal1Label">이메일인증 </h3>
                                  
                                    
                                    <!-- Portfolio Modal - Text-->
                                   <br>
                                   <form method="post">
                                   
                                   
                                    <table align="center" >
							             <tr>
							               <td>이메일: </td>   <!-- required : 필수 -->
							               <td><input type="text"  class="form-control"  name="emailCheckForm" id="emailCheckForm"  placeholder="example@naver.com" required></td>
							               <td></td>
							            </tr>
							            
							            <tr>
							               <td>인증번호: </td>  
							               <td><input type="text"  class="form-control"  name="confirmNum" id="confirmNum"></td>
							               <td></td>
							            </tr>
							            
							            
							            		
							 		</table>
					
									<br><br>
			
									     <button class="btn btn-primary" type="submit">확인</button>	                              
                                   
                                   </form>
                               
                                   
                                   
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


<%@ include file ="../common/footer.jsp" %>