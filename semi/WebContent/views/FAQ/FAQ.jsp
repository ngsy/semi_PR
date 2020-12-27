<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file ="../common/header.jsp" %>


        
            <div class="card shadow mb-4">
                  <div class="card-header py-3">
                            
 
<title>FAQ</title>
                   </div>                      
                    
                  <div class="card-body">
                  
                  
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

						
                   
                  </div>
           </div>
<%@ include file ="../common/footer.jsp" %>
</html>