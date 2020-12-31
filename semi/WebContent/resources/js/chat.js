
	

	var chatView= $("#chatView");
	var chatSend=$("#chatSend");
	var chatIcon=$(".sidebar-brand-icon");
	var leftBtn=$("#leftBtn");
	
	 function insertChatRoom(param){ //채팅방 들어가기
		  deleteChatRoomList();
		  addChatView();
		 startChat(param); //채팅시작 
	  }
	
	 
	function deleteChatRoomList(){ //채팅방리스트 지우기
		console.log("1");
		 $("#accordionSidebar > li").remove();
			$(".chatDivider").remove();
			chatIcon.remove();
	}
	function deleteChatView(){ //채팅방 지우기
		
		chatView.remove();
		chatSend.remove();
		leftBtn.remove();
		$(".sidebar-brand").prepend(chatIcon);
		
	}
	function addChatView(){ //채팅방 넣기
		$("#sidebar-header-wrapper").prepend(leftBtn);
		 $("#leftBtn").on("click","button",function(){ //채팅방 나가는 버튼 클릭
	 		
	 		addChatRoomList();
	 		
	 		
	 	});
		$("#accordionSidebar").append(chatView);
		$("#accordionSidebar").append(chatSend);
		
		
	}


	
	function getChatRoomList(mno){ //채팅방리스트 불러오기
		
		
		$.ajax({
			
			url:"getChatRoomList",
			type:"get",
			data:{ mno:mno},
			success:function(list){
				
				 deleteChatRoomList();
					deleteChatView();
					
					$("#accordionSidebar").on("click","li",function(){ //채팅방 클릭했을 때 이벤트
						
						var crno=$(this).data("crno");
						var name=$(this).find("span").text();
						insertChatRoom({crno:crno,name:name});
						
					});
					
					
					var str="";
					$.each(list,function(i){
						
						 str+=' <li class="nav-item active hoverStyle" data-crno='+list[i].crno+'><a class="nav-link"><i class="fas fa-caret-right"></i><span>&nbsp;&nbsp;&nbsp;'
						+list[i].mName+'</span><i class="fas fa-times float-right"></i></a></li>';
						
						str+='<hr class="sidebar-divider my-0 chatDivider">';
						
					});
				 	$("#accordionSidebar").append(str);
				 	
				 
			 
				
			},
			error: function(){
				console.log("채팅리스트 조회 실패");
			}
		
			
		});
		
		
		
	}
	
	

	
	
	function startChat(param){
		
		
			
			

		
		
		
	}
	



	
	
	


