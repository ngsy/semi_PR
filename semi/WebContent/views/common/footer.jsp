<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       
					</div>
				<!-- end container-fluid -->
				
					
			</div>
			<!-- end content -->
 
 
        </div>
		<!-- end content-wrapper -->
		
	    <div id="sidebar-wrapper" class="bg-sidebar">	
		    
		   
		
		<div id="sidebar" >
		    	<!-- Sidebar -->
	    	<ul class="navbar-nav  sidebar sidebar-dark accordion" id="accordionSidebar">
	    		<li class="nav-item active">
			        
	          			<button class="btn btn-lg border-0 float-right" id="sidebarHideBtn"><i class="far fa-times-circle"></i></button>
			          
			      </li>
			      
	
	    	
	     		 <a class="sidebar-brand d-flex align-items-center justify-content-center" href="#">
			        <div class="sidebar-brand-icon rotate-n-15">
			          	<i class="fas fa-comment-dots"></i>
			        </div>
		        	<div class="sidebar-brand-text mx-3">채팅</div>
	      		</a>
	      		
			     <!-- Divider -->
			     <hr class="sidebar-divider my-0">
	      		
	   		     <!-- Nav Item - Total -->
			      <li class="nav-item active">
			        <a class="nav-link"  >
			          <i class="fas fa-fish"></i>
			          <span>채팅방1</span></a>
			      </li>
			      
	 		    
			      <li class="nav-item active">
			        <a class="nav-link"  >
			          <i class="fas fa-fish"></i>
			          <span>채팅방2</span></a>
			      </li>
			      
	 		     
			      <li class="nav-item active">
			        <a class="nav-link"  >
			          <i class="fas fa-fish"></i>
			         <span>채팅방3</span></a>
			      </li>
			      
	 		     
			      <li class="nav-item active">
			        <a class="nav-link" >
			          <i class="fas fa-fish"></i>
			          <span>채팅방4</span></a>
			      </li>		      		      
	 
	  		     
			      <li class="nav-item active">
			        <a class="nav-link"  >
			          <i class="fas fa-fish"></i>
			          <span>채팅방5</span></a>
			      </li>   	
	
	 

	    			       	
	 			      <!-- Divider -->
	      		<hr class="sidebar-divider d-none d-md-block">
	
	 
	 
	 
	 
	    	</ul>
    	
    	</div>
    	<!-- sidebar end -->
    	
    	  			 <script>
   			
   			 
		      	$("#sidebarHideBtn").on("click",function(){
		      		console.log(1);
		      		$("#sidebar-wrapper").css("display","none");
		      		
		      	});
		      
		      </script>
	</div>
	</div>
	<!-- end Page Wrapper -->
       
       
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
        <script src="<%=request.getContextPath() %>/resources/js/bootstrap.bundle.min.js"></script>
</body>
</html>