<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file ="../common/header.jsp" %>
     

  <div class="outer">
      <br>

      <h2 class="mb-3" align="center">회원가입</h2>

      <form id="enrollForm"
         action="<%=request.getContextPath()%>/insert.me" method="post"
         onsubmit="return joinValidate();">
         <table   class="nav-item mx-0 mx-lg-1" >
            <tr >
               <td width="200px">* 아이디</td>
               <td><input type="text" maxlength="13" name="userId" required></td>
               <td width="200px">
                  <button type="button" id="idCheckBtn" onclick="checkId();">중복확인</button>
               </td>
            </tr>
            
            <tr>
               <td>* 비밀번호</td>
               <td><input type="password" maxlength="15" name="userPwd"
                  required></td>
               <td><label id="pwdResult"></label></td>
               <td></td>
            </tr>
            <tr>
               <td>* 비밀번호 확인</td>
               <td><input type="password" maxlength="15" name="checkPwd"
                  required></td>
               <td></td>
            </tr>
            <tr>
               <td>* 이름</td>
               <td><input type="text" maxlength="5" name="userName" required></td>
               <td></td>
            </tr>
            <tr>
               <td>연락처</td>
               <td><input type="tel" maxlength="11" name="phone"
                  placeholder="(-없이)01012345678"></td>
               <td></td>
            </tr>
      
            <tr>
               <td>이메일</td>
               <td><input type="email" name="email"></td>
               <td></td>
            </tr>
            <tr>
               <td>주소</td>
               <td><input type="text" name="address"></td>
               <td></td>
            </tr>
             <td></td>
            <tr>
           <td>내위치 조회</td>
    
           <td><button type="button" class="btn btn-primary btn-lg" onclick="#">조회</button><td>
           
            </tr>
  
         </table>
         <br>

         <div class="btns" align="center">
            <button type="button" id="goMain" onclick="history.go(-1)">메인으로</button>

            <button type="submit" id="joinBtn" disabled>가입하기</button>

         </div>
      </form>



<%@ include file ="../common/footer.jsp" %>
</html>