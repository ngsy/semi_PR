<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file ="../common/header.jsp" %>


        
            <div class="card shadow mb-4">

                  <div class="card-header py-3">
                            
 						        <h2>자주 묻는 질문  &nbsp; <i class="fas fa-bullhorn" style="font-size: 30px;"></i> </h2>


                   </div>                      
                    
                  <div class="card-body">
                  
                  
                  			

<div class="faq">
    <div class="faqHeader">
        <!--button type="button" class="showAll">답변 모두 여닫기</button-->
    </div>
    <ul class="faqBody">
        <li class="article" id="a1" >
            <p class="q"><a href="#a1">질문1. 품앗이란 무엇인가요?
            &nbsp;  &nbsp; <i class="fas fa-caret-square-down" style="font-size: 20px;">
            </i></a></p>
            <p class="a">품앗이란 <br><br><br>
            	         사전에 정의된 내용은 품앗이는 임금을 주지 않는 한(韓)민족 고유의 1대1의 교환노동 관습이다.<br>
            	         사람들간의 교환노동으로 서로의 품격 높은 신뢰를 전제로 하며, 개별 노동의 실제 가치를 따지지 않고 참여자의 개별 상황을 인정하면서 이루어지는, <br> 
            	         신뢰와 인정을 바탕으로 한 한민족 고유의 관습에 대한 명칭이다. <br>
            	         우리는 그것을 의미를 참고하여 신뢰를 바탕으로 하는 1대1의 교환 노동이다. <br>
            	         누구나 혼자서는 힘든 일이 존재한다.<br>
            	         누군가가 내 옆에 있어서 도와주면 그 일들이 쉬워질텐데 라는 생각을 많이 하고 또 상대방의 도움이 없어서 그 일을 못하는 경우가 많다. <br>
            	          그 부분의 단점을 없애고자 품앗이 라는 사이트를 만들었습니다. </p>
            	         
        </li>
        <li class="article" id="a2">
            <p class="q"><a href="#a2">질문2. 탈퇴를 하고 싶은데 어떻게 해야되나요?
            &nbsp;  &nbsp; <i class="fas fa-caret-square-down" style="font-size: 20px;">
            </i></a></p>
            <p class="a">탈퇴를 하고 싶다고요? 정말 탈퇴를 해야되나요? 정말 하고 싶다면 제 말에 따르시면 됩니다. <br><br><br>
            		     1. 로그인을 버튼을 먼저 누르세요 <br>
            		     2. 아이디와 비번을 입력하세요 <br>
            		     3. 로그인이 되었으면 우축 상단에 있는 자기 아이디를 클릭하세요 <br>
            		     4. 마이페이지에 들어가세요 <br>
            		     5. 회워탈퇴를 클릭하세요 <br>
            		     6. 회원탈퇴를 하시면 됩니다.<br> <br><br>
            		     7. 그동안 감사했습니다. 다음에도 방문해주시면 감사하겠습니다. <br>
            		           너무나도 고생 많았습니다.</p>
        </li>
        <li class="article" id="a3">
            <p class="q"><a href="#a3">질문3. 채팅은 어떻게 하는 건가요?
            &nbsp;  &nbsp; <i class="fas fa-caret-square-down" style="font-size: 20px;">
            </i></a></p>
            <p class="a">채팅을 하고 싶나요? 저도 채팅을 좋아하는데 같이 한번 해볼까요?<br><br><br>
            			이제 채팅의 마법으로 가봅시다. <br> <br>
            			먼저 로그인을 하셨나요? 안되었으면 로그인 하러 고고고  <br>
            		    로그인을 하셨죠? ㅎㅎ 그러면 이제 게시판에 들어갑니다.<br>
            		    품앗이 하고 싶은 게시판에 들어가서 상대방 아이디 옆에 채팅이라는 것이 있습니다. <br>
            		    그것을 클릭하시면 됩니다. <br>
            		    채팅 어렵지 않아요 <br>
            		    여러분도 할 수 있습니다. <br>
            		   Thank you 
            			</p>
        </li>
         <li class="article" id="a4">
            <p class="q"><a href="#a4">질문4. 아이디랑 비번이 기억이 안나요.
            &nbsp;  &nbsp; <i class="fas fa-caret-square-down" style="font-size: 20px;">
            </i></a></p>
            <p class="a">회원님 당황하셨나요? 이런 큰일났네요 <br><br><br>
            	아이디가 기억 안나요? 비번도 기억이 안나요? <br>
            	그러면 정말 큰일이네요 <br>
            </p>
        </li>
         <li class="article" id="a5">
            <p class="q"><a href="#a5">질문5. 품앗이 거래는 어떻게 하는건가요?
			&nbsp;  &nbsp; <i class="fas fa-caret-square-down" style="font-size: 20px;">
            </i></a></p>
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