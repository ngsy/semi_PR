<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ</title>
<style>
/* FAQ */
.faq{border-bottom:0px solid #ddd;margin:1em 0;}
.faq .faqHeader{position:relative;zoom:1}
.faq .faqHeader .showAll{position:absolute;bottom:0;right:0;border:0;padding:0;overflow:visible;background:none;cursor:pointer}
.faq .faqBody{margin:0;padding:0}
.faq .faqBody .article{list-style:none}
.faq .q{margin:}
.faq .q a{display:block;text-align:left; 
    background:url("faq1_icon_q.png") no-repeat 0 0;
    padding:0 0 0 35px;
    font-size:18px;
    color:#5e5e5e;
    font-weight:bold;
    line-height: 27px;
    cursor:pointer;
    margin: 10px 0; !important}
.faq .q a:hover, .faq .q a:active, .faq .q a:focus{}
.faq .a{background:#f8f8f8 url("faq1_icon_a.png") no-repeat 40px 10px;padding: 10px 75px 10px 75px;
    font-size: 16px;
    color: #444444;
    line-height: 22px;
    border-top: 1px solid #bdbdbd;
    margin:5px 0 0 0;}
.head {
	font-size : 50px;
	color : green;
	
	}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-latest.js"></script>

</head>

<body>
<%@ include file ="../common/header.jsp" %>
<h1 class = "head" >자주 묻는 질문</h1>
<br><br><br>
<div class="faq">
    <div class="faqHeader">
        <!--button type="button" class="showAll">답변 모두 여닫기</button-->
    </div>
    <ul class="faqBody">
        <li class="article" id="a1">
            <p class="q"><a href="#a1">질문1. 품앗이가 무엇인가요?</a></p>
            <p class="a">품앗이란 <br>
            	                    세상에 둘도 없는것이다. </p>
        </li>
        <li class="article" id="a2">
            <p class="q"><a href="#a2">질문2</a></p>
            <p class="a">답변2</p>
        </li>
        <li class="article" id="a3">
            <p class="q"><a href="#a3">질문3</a></p>
            <p class="a">답변3</p>
        </li>
         <li class="article" id="a4">
            <p class="q"><a href="#a4">질문4</a></p>
            <p class="a">답변4</p>
        </li>
         <li class="article" id="a5">
            <p class="q"><a href="#a5">질문5</a></p>
            <p class="a">답변5</p>
        </li>
        
        
    </ul>
</div>

<script>
jQuery(function($){
    // Frequently Asked Question
    var article = $('.faq>.faqBody>.article');
    article.addClass('hide');
    article.find('.a').hide();
    article.eq(0).removeClass('hide');
    article.eq(0).find('.a').show();
    $('.faq>.faqBody>.article>.q>a').click(function(){
        var myArticle = $(this).parents('.article:first');
        if(myArticle.hasClass('hide')){
            article.addClass('hide').removeClass('show');
            article.find('.a').slideUp(100);
            myArticle.removeClass('hide').addClass('show');
            myArticle.find('.a').slideDown(100);
        } else {
            myArticle.removeClass('show').addClass('hide');
            myArticle.find('.a').slideUp(100);
        }
        return false;
    });
    $('.faq>.faqHeader>.showAll').click(function(){
        var hidden = $('.faq>.faqBody>.article.hide').length;
        if(hidden > 0){
            article.removeClass('hide').addClass('show');
            article.find('.a').slideDown(100);
        } else {
            article.removeClass('show').addClass('hide');
            article.find('.a').slideUp(100);
        }
    });
});
</script>
<%@ include file ="../common/footer.jsp" %>
</body>
</html>