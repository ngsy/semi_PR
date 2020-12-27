<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file ="../common/header.jsp" %>
     

 <div class="card shadow mb-4">
                  <div class="card-header py-3">
                            
                   <h2 >회원가입</h2>
                   
                   </div>                      
                    
                  <div class="card-body">
            
                  
                  <form id="enrollForm"
         action="<%=request.getContextPath()%>/insert.me" method="post"
         onsubmit="return joinValidate();">
         <table    align="center" >
            <tr>
               <td width="200px">아이디</td>
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
               <td>이름</td>
               <td><input type="text"  class="form-control" maxlength="5" name="userName" required></td>
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
               <td><input type="email" class="form-control"  name="email"></td>
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
         

            <button type="submit" class="btn btn-primary btn-success" id="joinBtn" disabled>가입하기</button>

         </div>
      </form>
                  		
                   
           </div>
           
              <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <br>
       
           </div>
                  
                  
  




<%@ include file ="../common/footer.jsp" %>