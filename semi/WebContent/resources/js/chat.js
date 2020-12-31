
var chatRoomService=function(){
	
	
	function getChatRoomList(mno,callback){
		
		
		$.ajax({
			
			url:"getChatRoomList",
			type:"get",
			data:{ mno:mno},
			success:function(list){
				
				if(callback){
					callback(list);
				}
				
			},
			error: function(){
				console.log("채팅리스트 조회 실패");
			}
		
			
		});
		
		
		
	}
	
	return {
		getChatRoomList:getChatRoomList
		
		
	};
	
}();


var chatService=function(){
	
	
	function startChat(mno,callback){
		
		deleteChatRoomList();
			
			

		
		
		
	}
	
	return {
		startChat:startChat
		
		
	};
	
}();
	

	
	
	
	


