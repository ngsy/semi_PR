<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="../common/header.jsp" %>

	        <div class="card shadow mb-4">
                  <div class="card-header py-3">
                       신고조회    
                       
                   </div>                      
                    
                  <div class="card-body">
          
                  	<form>
                  	
                  		<div class="form-group">
                  			<label for="reportNo" class="form-label">신고번호</label>
                  			<input class="form-control" id="reportNo" name="reportNo" type="text">
                  		
                  		</div>
                  		
                  		                 	
                  		<div class="form-group">
                  			<label for="reportMem" class="form-label">신고한 사용자</label>
                  			<input class="form-control" id="reportMem" name="reportMem" type="text">
                  		
                  		</div>
                  		
                  		<div class="form-group">
                  			<label for="reportCategory" class="form-label">이유</label>
                  			<input class="form-control" id="reportCategory" name="reportCategory" type="text">
                  		
                  		</div>
                  		<div class="form-group">
                  			<label for="reportCategory" class="form-label">내용</label>
						  <textarea class="form-control" id="reportCategory" name="reportCategory" rows="3"></textarea>
                  		</div>
                  		
                  		  <button class="btn btn-primary" >게시글 조회하기</button>
                  		  <button class="btn btn-danger" >게시글 삭제하기</button>	
                  		  
                  		
                  	
                  	
                  	</form>
                  
                  		
     
                </div>       
			 <!-- card-body end -->
           </div>
   			<!-- card end -->
                    





<%@ include file ="../common/footer.jsp" %>