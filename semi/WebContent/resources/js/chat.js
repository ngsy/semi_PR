$(function(){
	

		$("#sidebar-wrapper").css("display","none");

	$("#sidebarBtn").on("click",function(){
  		var status=$("#sidebar-wrapper").css("display");
  		
  	
  		if(status=="none"){
  			$("#sidebar-wrapper").css("display","block");
  		}else if(status=="block"){
  			$("#sidebar-wrapper").css("display","none");

  		}
  		
  	});
	
	function getChatRoomList(){
		
		
		$.ajax({
			
			url:"getChatRoomList",
			type:"get",
			data:{ mno:mno},
			success:function(list){
				
			$("#accordionSidebar > li").remove();
			$(".chatDivider").remove();
			
				
			},
			error: function(){
				console.log("채팅리스트 조회 실패");
			}
		
			
		});
		
		
		
	}
	
	
	
	
});

