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
        <title>Freelancer - Start Bootstrap Theme</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.1/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="<%=contextPath%>/resources/css/styles.css" rel="stylesheet" /> <!--css 링크 바꿀부분-->
</head>
<body>
		
	<!-- Page Wrapper -->
	<div id="wrapper">		
    	<!-- Sidebar -->
    	<ul class="navbar-nav bg-sidebar sidebar sidebar-dark accordion" id="accordionSidebar">
    	
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
		        <a class="nav-link" href="All" >
		          <i class="fas fa-fish"></i>
		          <span>채팅방1</span></a>
		      </li>
		      
 		     <!-- Nav Item - outer -->
		      <li class="nav-item active">
		        <a class="nav-link" href="Outer" >
		          <i class="fas fa-fish"></i>
		          <span>채팅방2</span></a>
		      </li>
		      
 		     <!-- Nav Item - top -->
		      <li class="nav-item active">
		        <a class="nav-link" href="Top" >
		          <i class="fas fa-fish"></i>
		         <span>채팅방3</span></a>
		      </li>
		      
 		     <!-- Nav Item - bottom -->
		      <li class="nav-item active">
		        <a class="nav-link" href="Bottom" >
		          <i class="fas fa-fish"></i>
		          <span>채팅방4</span></a>
		      </li>		      		      
 
  		     <!-- Nav Item - acc -->
		      <li class="nav-item active">
		        <a class="nav-link" href="Acc" >
		          <i class="fas fa-fish"></i>
		          <span>채팅방5</span></a>
		      </li>   	

 			
 			      <!-- Divider -->
      		<hr class="sidebar-divider d-none d-md-block">

      			<!-- Sidebar Toggler (Sidebar) -->
     		 <div class="text-center d-none d-md-inline">
        			<button class="btn btn-lg border-0" ><i class="far fa-times-circle"></i></button>
      		</div>
 
 
 
    	</ul>
    	
    	<!-- sidebar end -->
    	<div id="content-wrapper" class="d-flex flex-column">	
		    
		     <!-- Main Content -->
      		<div id="content">	

  <!-- Navigation-->
 
        <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top">pumassi</a>
                <button class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#portfolio">Portfolio</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#about">About</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#contact">Contact</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        
        <div class="container-fluid">
