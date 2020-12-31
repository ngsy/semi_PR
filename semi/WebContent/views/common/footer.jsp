<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.member.model.vo.Member" %>


  <%
  
  Member loginUser2 = (Member)session.getAttribute("loginUser"); 
  int mno=0;	
  
  if(loginUser2!=null){
		 mno=loginUser2.getM_no();
  
	} 
  %>  
  
  <script>
  $(function(){
	  
	<% if(loginUser2!=null){ %>  //로그인 했을 때
	 var mno=<%=mno%>;
	 
	 chatRoomService.getChatRoomList(mno,function(list){
		 
			
			deleteChatView();
			
			$("#accordionSidebar").on("click","li",function(){ //채팅방 클릭했을 때 이벤트
				
				chatService.startChat(); 
				
			});
			
			
			var str="";
			$.each(list,function(i){
				
				 str+=' <li class="nav-item active hoverStyle"><a class="nav-link"><i class="fas fa-caret-right"></i><span>&nbsp;&nbsp;&nbsp;'
				+list[i].mName+'</span><i class="fas fa-times float-right"></i></a></li>';
				
				str+='<hr class="sidebar-divider my-0 chatDivider">';
				
			});
		 	$("#accordionSidebar").append(str);
		 	
		 
	 });
	  
	  <% }%>
	  
 	function deleteChatRoomList(){
		 $("#accordionSidebar > li").remove();
			$(".chatDivider").remove();
 	}
 	function deleteChatView(){
 		$("#chatView").remove();
 		$("#chatSend").remove();
 		
 	}
  
  
  });
  
  
  </script>  
					</div>
				<!-- end container-fluid -->
				
				
						      <!-- Footer-->
        <footer class="footer text-center">
            <div class="container">
                <div class="row">
                    <!-- Footer Location-->
                    <div class="col-lg-4 mb-5 mb-lg-0">
                        <h4 class="text-uppercase mb-4">Location</h4>
                        <p class="lead mb-0">
                            2215 John Daniel Drive
                            <br />
                            Clark, MO 65243
                        </p>
                    </div>
                    <!-- Footer Social Icons-->
                    <div class="col-lg-4 mb-5 mb-lg-0">
                        <h4 class="text-uppercase mb-4">Around the Web</h4>
                        <a class="btn btn-outline-light btn-social mx-1" href="#!"><i class="fab fa-fw fa-facebook-f"></i></a>
                        <a class="btn btn-outline-light btn-social mx-1" href="#!"><i class="fab fa-fw fa-twitter"></i></a>
                        <a class="btn btn-outline-light btn-social mx-1" href="#!"><i class="fab fa-fw fa-linkedin-in"></i></a>
                        <a class="btn btn-outline-light btn-social mx-1" href="#!"><i class="fab fa-fw fa-dribbble"></i></a>
                    </div>
                    <!-- Footer About Text-->
                    <div class="col-lg-4">
                        <h4 class="text-uppercase mb-4">About Freelancer</h4>
                        <p class="lead mb-0">
                            Freelance is a free to use, MIT licensed Bootstrap theme created by
                            <a href="http://startbootstrap.com">Start Bootstrap</a>
                            .
                        </p>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Copyright Section-->
        <div class="copyright py-4 text-center text-white">
            <div class="container"><small>Copyright © Pumassi 2020</small></div>
        </div>
 
					
			</div>
			<!-- end content -->
 	
        </div>
		<!-- end content-wrapper -->
		
 	    <div id="sidebar-wrapper" class="bg-sidebar">	
		    
		   
		
		<div id="sidebar" >
		    <!-- 	Sidebar -->
	    	<ul class="navbar-nav  sidebar sidebar-dark accordion" id="accordionSidebar">

	
	    	
	     		 <a class="sidebar-brand d-flex align-items-center justify-content-center" href="#">
			        <div class="sidebar-brand-icon rotate-n-15">
			          	<i class="fas fa-comment-dots"></i>
			        </div>
		        	<div class="sidebar-brand-text mx-3">채팅</div>
	      		</a>
	      		
<!-- 			     Divider
			     <hr class="sidebar-divider my-0">
	      		
	   		     Nav Item - Total
			      <li class="nav-item active hoverStyle">
			        <a class="nav-link"  >
			          <i class="fas fa-fish"></i>
			          <span>채팅방1</span></a>
			      </li> -->
			     
					
					<div  id="chatView">
					
					</div>
					<div id="chatSend">
						<textarea id="chatWriteArea" class="form-control"></textarea>
						<button id="chatSendBtn" class="btn btn-primary">Send</button>
					</div>
				
	
	 
	    	</ul>
	    	
	    	
    	
    	</div>
    	<!-- sidebar end -->
    	
  
	</div>
	<!--sidebar-wrapper end
	-->
	</div> 
	<!-- end Page Wrapper -->
       
    
    
    
 
        <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes)-->
        <div class="scroll-to-top d-lg-none position-fixed">
            <a class="js-scroll-trigger d-block text-center text-white rounded" href="#page-top"><i class="fa fa-chevron-up"></i></a>
        </div>
        
        
        <!-- Bootstrap core JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <!-- Contact form JS-->
        <script src="assets/mail/jqBootstrapValidation.js"></script> <!-- 경로 바꿔야할곳 -->
        <script src="assets/mail/contact_me.js"></script> 
        <!-- Core theme JS-->
        <script src="<%=request.getContextPath() %>/resources/js/scripts.js"></script> <!-- js 바꿔야할곳-->

</body>
</html>