<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 


    
    	<%@ include file ="views/common/header.jsp" %>
    	
    	
    	
    	 <style>

.topList {
		width: 1000px;
		height: 500px;
		
		color: black;
		float:right;
		margin-top: 100px
	}

.thumb {
	display:inline-block;
	width: 300px;
	height: 250px;
	margin: 10px;
	border: 1px solid black;
}

.thumb:hover {
	cursor: pointer;
}

</style>
      
        <!-- Masthead-->
        <header class="masthead bg-primary text-white text-center">
        
            <div class="container d-flex align-items-center flex-column">
                <!-- Masthead Avatar Image-->
                <img class="masthead-avatar mb-5" src="assets/img/avataaars.svg" alt="" />
                <!-- Masthead Heading-->
                <h1 class="masthead-heading text-uppercase mb-0">PUMASSI</h1>
                <!-- Icon Divider-->
                <div class="divider-custom divider-light">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- Masthead Subheading-->
                <p class="masthead-subheading font-weight-light mb-0"> </p>
            </div>
        </header>
        <!-- Portfolio Section-->
        <section class="page-section portfolio" id="portfolio">
       
             <h2 class="page-section-heading text-center text-uppercase text-secondary ">우리동네 인기게시글</h2>
             <!-- 별모양 아이콘-->
                <div class="divider-custom">
                    <div class="divider-custom-line"></div>
                 <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>    
                    
                </div>
           <!-- 인기게시물 3가지들어갈곳 -->      
              <div class="row">
              <div class="topList" align="right">
              
               <div id="thumbList">
              
              
              </div>
              
              </div>
      
           
            
                 
                           
            
        
   
        </section>
        <!-- About Section-->
        <section class="page-section bg-primary text-white mb-0" id="about">
            <div class="container">
                <!-- About Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-white">About</h2>
                <!-- Icon Divider-->
                <div class="divider-custom divider-light">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- About Section Content-->
                <div class="row">
                    <div class="col-lg-4 ml-auto"><p class="lead">Freelancer is a free bootstrap theme created by Start Bootstrap. The download includes the complete source files including HTML, CSS, and JavaScript as well as optional SASS stylesheets for easy customization.</p></div>
                    <div class="col-lg-4 mr-auto"><p class="lead">You can create your own custom avatar for the masthead, change the icon in the dividers, and add your email address to the contact form to make it fully functional!</p></div>
                </div>
                <!-- About Section Button-->
                <div class="text-center mt-4">
                    <a class="btn btn-xl btn-outline-light" href="https://startbootstrap.com/theme/freelancer/">
                        <i class="fas fa-download mr-2"></i>
                        Free Download!
                    </a>
                </div>
            </div>
        </section>
        <!-- Contact Section-->
        <section class="page-section" id="contact">
            <div class="container">
                <!-- Contact Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Contact Me</h2>
                <!-- Icon Divider-->
                <div class="divider-custom">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- Contact Section Form-->
                <div class="row">
                    <div class="col-lg-8 mx-auto">
                        <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19.-->
                        <form id="contactForm" name="sentMessage" novalidate="novalidate">
                            <div class="control-group">
                                <div class="form-group floating-label-form-group controls mb-0 pb-2">
                                    <label>Name</label>
                                    <input class="form-control" id="name" type="text" placeholder="Name" required="required" data-validation-required-message="Please enter your name." />
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="control-group">
                                <div class="form-group floating-label-form-group controls mb-0 pb-2">
                                    <label>Email Address</label>
                                    <input class="form-control" id="email" type="email" placeholder="Email Address" required="required" data-validation-required-message="Please enter your email address." />
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="control-group">
                                <div class="form-group floating-label-form-group controls mb-0 pb-2">
                                    <label>Phone Number</label>
                                    <input class="form-control" id="phone" type="tel" placeholder="Phone Number" required="required" data-validation-required-message="Please enter your phone number." />
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="control-group">
                                <div class="form-group floating-label-form-group controls mb-0 pb-2">
                                    <label>Message</label>
                                    <textarea class="form-control" id="message" rows="5" placeholder="Message" required="required" data-validation-required-message="Please enter a message."></textarea>
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <br />
                            <div id="success"></div>
                            <div class="form-group"><button class="btn btn-primary btn-xl" id="sendMessageButton" type="submit">Send</button></div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
       
       
       
       
       <!-- ------------------------------------------스크립트 ---------------------------------------------------------------->
       
	<script>
		$(function() {
			selectTopList();
			//setInterval(selectTopList,2000);
			
			$("#thumbList").on("click",".thumb",function(){ 
				var sNo =$(this).children().eq(0).val();
				  <% if (loginUser != null || loginUser == null) { %>
				location.href="<%=contextPath%>/detail.sh?sNo="+ sNo;
				<%}%>
			});
		});

		function selectTopList() {
			$.ajax({
				url : "topShList.do",
				type : "get",
				success : function(list) {
					var value="";
					for(var i in list){
						value += '<div class="thumb" align="center">'+
								  '<input type="hidden" value="'+list[i].shopNo+'">'+
								  '<img src="<%=contextPath%>/resources/board_upfiles/'+ list[i].titleImg+'"width="250px" height="200px"> <br>'+
								  '<p>'+list[i].shopTitle+'</p>'+
								  '</div>';
								  
						
					}
					$("#thumbList").html(value);
				},
				error : function() {
					console.log("ajax 통신실패");
				}

			});
		}
	</script>
       
        
         	<%@ include file ="views/common/footer.jsp" %>

