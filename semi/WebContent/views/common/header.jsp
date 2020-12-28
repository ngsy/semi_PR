
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath=request.getContextPath();

%>       
<!DOCTYPE html>
<html>
<head>
       <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Freelancer - Start Bootstrap ThemE</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.1/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        
        
           <link href="<%=contextPath%>/resources/css/styles.css" rel="stylesheet" /> <!--css 링크 바꿀부분-->
         <script src="<%=contextPath%>/resources/js/jquery-3.5.1.min.js" ></script>

                     
		 <!--summernote cdn-->
		  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
		  <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
		        



</head>
<body>

	<!-- Page Wrapper -->

	<div id="wrapper">		

    	
 
    	
    	
    	<div id="content-wrapper" class="d-flex flex-column">	
		    
		     <!-- Main Content -->
      		<div id="content">	

  <!-- Navigation-->
 
        <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="<%=contextPath%>">pumassi</a>
                <button class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#portfolio">Portfolio</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#about">About</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#contact">Contact</a></li>
                    	<li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="<%=request.getContextPath() %>/views/FAQ/FAQ.jsp">FAQ</a></li>
                    	<li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#contact">|</a></li>
                    	<li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#contact">로그인</a></li>
                    	<li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="<%=request.getContextPath()%>/views/member/memberJoinForm.jsp">회원가입</a></li>
                    	
                    	
                    	
                    </ul>
                </div>
         
                
            </div>
                  
                <div>
                <button class="btn btn-lg border-0 float-right color-white" id="sidebarBtn"><i class="far fa-comment-dots"></i></button>
        		<button class="btn btn-lg border-0 float-right color-white" ><i class="fas fa-tools"></i></button>
          
                
                </div>
        </nav>
        
        <script>
	      	$("#sidebarBtn").on("click",function(){
	      		var status=$("#sidebar-wrapper").css("display");
	      		
	      		
	      		
	      	
	      		if(status=="none"){
	      			$("#sidebar-wrapper").css("display","block");
	      		}else if(status=="block"){
	      			$("#sidebar-wrapper").css("display","none");

	      		}
	      		
	      	});
        </script>
        
        <div class="container-fluid">

        
        
        
        
        
        
        

