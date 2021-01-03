



	var chatRoomName=$("#chatRoomName"); //채팅방 이름부분 객체

	var mno; //로그인하면 회원 번호 들어옴 
	var mno2; //채팅방 클릭하거나 게시글에서 채팅하기 클릭했을때 상대방 번호 저장
	var mName; //채팅방 이름 바꿀때 사용
	
	
	var chatListWS;
	var chatWS;
	
	

	function deleteChatRoomList(){ //채팅방리스트 지우기
		
		 $("#accordionSidebar > li").remove();
			$(".chatDivider").remove();
			
	}
	function deleteChatList(){ //채팅리스트 지우기
		$(".chatDiv").remove();
		
	}
	
	

	 function insertChatRoom(){ //채팅방 들어가기
		 
		 chatRoomName.text(mName); //채팅방 이름 바꾸기
		
		 //게시판글에서 채팅하기 클릭했을때 상태따라서 바꿈
		 $("#sidebar").css("display","none"); //채팅리스트 숨기기
			$("#sidebar2").css("display","block"); //채팅방 보이게 바꾸기 
			
			
			
			
			
			
			
			deleteChatList();
			
			//원래 존재한 채팅방이면ajax로 불러옴 
			
			$.ajax({
				url:"getChatList",
				type:"get",
				data:{mno:mno,mno2:mno2},
				success:function(list){
					
					str="";
					$.each(list,function(i){
					
						if(list[i].chatSender==mno){ //내가 보낸 메세지일 때
							
							str+='<div class="chatDiv">'+
								'<span class="myChat float-right">'+list[i].chatContent+'</span><br>'+
								'<span class="time float-right">'+list[i].chatDate+'</span>';
							
							
									if(list[i].readStatus=="N"){
										str+='<span class="unread float-right">1</span>';
									}
							str+='</div>';
							
						}else{
							str+='<div class="chatDiv">'+
							'<span class="otherChat float-left">'+list[i].chatContent+'</span><br>'+
							'<span class="time float-left">'+list[i].chatDate+'</span></div>';
							
						}
						
						
					});
					$("#chatView").html(str);
				},
				error:function(){
					console.log("채팅방 로딩 오류");
					
				}
				
				
				
				
			});
			
			
			
			
			
//			
//			var emptyJson={chatSender:mno,chatReceiver:mno2};
//			
//			
//		  chatWs=new WebSocket("ws://localhost:8090/semi/chat");
//		 chatWs.onopen=function(){
//			 chatWs.send(JSON.stringify(emptyJson));
//		 };
//		
	  }
	
	function getChatRoomList(){ //채팅방리스트 불러오기
		
		 deleteChatRoomList();
		$("#sidebar2").css("display","none"); //채팅방 숨기기
		$("#sidebar").css("display","block");
		
		$.ajax({  //채팅방리스트가져오기 
			
			url:"getChatRoomList",
			type:"get",
			data:{ mno:mno},
			success:function(list){
				
			
					
					$("#accordionSidebar").on("click","li",function(){ //채팅방 클릭했을 때 이벤트
						
						
						mno2=$(this).data("mno2");
					 mName=$(this).data("mname"); //채팅방 이름 변수 바꿔놓기 
						
						
						
						insertChatRoom(); //채팅방 
						
					});
					
					
					var str="";
					$.each(list,function(i){
						
						str+='<li class="nav-item active hoverStyle"  data-mno2="'+list[i].mno2+'" data-mName="'+list[i].mName+'">'+
					   	'<div  class="firstRow color-white"><i class="fas fa-caret-right"></i><span>&nbsp;&nbsp;&nbsp;'+list[i].mName+'</span><button  class="btn float-right color-white chatRoomRemoveBtn"><i class="fas fa-times "></i></button></div>'
						   	+'<div  class="secondRow"> <div class="firstCol"><span class="lastChat">&nbsp;&nbsp;&nbsp; '+list[i].lastChat+'</span></div><div class="secondCol"><span class="float-right chatUnreadCount">'+list[i].unreadCount+'</span></div></div>'
						   	 
						  +' </li>';
						
						str+='<hr class="sidebar-divider my-0 chatDivider">';
						
					});
				 	$("#accordionSidebar").append(str);
				 	
				 
			 
				
			},
			error: function(){
				console.log("채팅리스트 조회 실패");
			}
		
			
		});
		
		
		
	}
	
	$("#exitChatBtn").on("click",function(){ //채팅방에서 나가는 버튼 클릭했을 때 
		
		chatWS.close();
		getChatRoomList();
		
		
	});
	




	
	


		
	

	
	
	



	
	
	


