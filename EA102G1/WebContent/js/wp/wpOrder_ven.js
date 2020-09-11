$(document).ready(function(){
	var url = (window.location.href).split('/')[0]+'/'+(window.location.href).split('/')[1]+'/'+(window.location.href).split('/')[2]+'/'+(window.location.href).split('/')[3]
	console.log(url);
	
	$("tbody > tr").each(function(i,item){
		$(this).children().eq(0).html('<span class="badge badge-info">'+(i+1)+'</span>');
	})
	
	$.ajax({
		type: "POST",
		url: url + "/wed/wpcase.do",
			dataType: "json",
			data: {
				action:"select_order_no_Ajax"
			},
			success:function(data){
				$("[name='select_order_no']").empty();
				$("[name='select_order_no']").append("<option value='0'> 請選擇 </option>");
				$(data).each(function(i, item){
					var vender_id = $('.account-position').text().substring(5);
					if(vender_id == item.vender_id){
						$("[name='select_order_no']").append("<option value='"+item.wed_photo_order_no+"'>"+item.wed_photo_order_no+"</option>");
					}					
// 					$("[name='select_order_no']").append("<option></option>");
// 					$("option").eq(i).attr("value",item.wed_photo_order_no);
// 					$("option").eq(i).text(item.wed_photo_order_no);
				});
			}
	})

	//訂單按鈕的判斷
	$(".complete").each(function(){
		var order_status = $(this).siblings().eq(0).attr("value"); //訂單狀態
		var wp_vrep_s = $(this).siblings().eq(1).attr("value"); //廠商檢舉狀態
		var wp_mrep_s = $(this).siblings().eq(2).attr("value"); //會員檢舉狀態
		
		if(order_status == 2){
			//取消
			$(this).text("訂單取消");
			$(this).prop("disabled",true);
			$(this).attr("class","btn btn-danger");
			$(this).nextAll(".btn-info").prop("disabled",true);
			$(this).nextAll(".btn-info").attr("class","btn btn-danger dropdown-toggle px-3");
		}
		else if(order_status == 1 && wp_vrep_s != 0){
			//檢舉
			$(this).text("　檢舉　");
			$(this).prop("disabled",true);
			$(this).nextAll(".btn-info").prop("disabled",true);
		}else if(order_status == 1 && wp_mrep_s != 0){
			//被檢舉 不能按完成與取消
			$(this).prop("disabled",true);
			//刪除線效果 但還是可以按取消
			$(this).nextAll(".dropdown-menu").children().eq(1).css("text-decoration","line-through");
		}else if(order_status == 3){
			//完成
			$(this).prop("disabled",true);
			$(this).nextAll(".btn-info").prop("disabled",true);
		}else{
			//可以按完成
		}
	})
	
	// 查詢更多訂單資訊
	$("[name='read_more']").click(function(){
		
		$("[name='wed_photo_order_no']").val($(this).attr("value"));
		 const $valueSpan = $('.valueSpan2');
		 const $value = $('#customRange2'); //input type=range 的
		 $value.on('input change', () => {	//range出現的奇怪錯誤訊息 但是可以執行
		   $valueSpan.html($value.val());
		 });
		$.ajax({
			type: "POST",
			 url: url + "/wed/wpcase.do",
			 data: {
				 action:"getOne_Order_Ajax",
				 wed_photo_order_no:$(this).attr("value"),
				 identity:"vender"
				 //點擊button 把按鈕的 value="${wpordervo.wed_photo_order_no }"傳給後端找資料	 
			 },			
			 success: function (data){
				$('[name="order_status"]').val(JSON.parse(data).order_status);
				$('[name="order_explain"]').val(JSON.parse(data).order_explain);//order_explain
// 				$('[name="review_star"]').val(JSON.parse(data).review_star);
				$('#customRange2').attr("value",JSON.parse(data).review_star);//review_star
				$valueSpan.html($value.val());
				$('[name="review_content"]').val(JSON.parse(data).review_content);//review_content
				$('[name="wp_vrep_s"]').val(JSON.parse(data).wp_vrep_s);//wp_vrep_s
				$('[name="wp_vrep_d2"]').val(JSON.parse(data).wp_vrep_d);//wp_vrep_d
			 }
		 })
	})
	
	$(".complete").click(function(){
		$("[name='wed_photo_order_no']").val($(this).attr("name"));
	})
	// 點選訂單完成 出現填寫評價表格(非必填) 才進資料庫
	$(".complete_submit").click(function(){
		$.ajax({
			 type: "POST",
			 url: url + "/wed/wpcase.do",
			 data: {
				 action:"complete_order",
				 identity:"vender",
				 wed_photo_order_no:$("[name='wed_photo_order_no']").val()
			 },			
			 success: function (data){	 
				 alert(data+' 訂單完成囉!');
					$(":button").each(function(){
						if(data == $(this).attr("name")){
							$(this).prop("disabled",true);
							$(this).nextAll(".btn-info").prop("disabled",true);
						}
					})				 
			 }
		 })
	})
	
	$(".cancle").click(function(){ // 想跳個swal2好難...
		//廠商檢舉狀態
		var wp_vrep_s_decide = $(this).parent().parent().children().eq(2).attr("value")
		//會員檢舉狀態
		var wp_mrep_s_decide = $(this).parent().parent().children().eq(3).attr("value")
	
		var ans = confirm('確定取消訂單嗎？');
        console.log(ans); // true or false
		if(ans){
			if(wp_vrep_s_decide != 0 || wp_mrep_s_decide != 0){
				alert('檢舉處理中，無法取消訂單！');
				return;
			}else{
				$.ajax({
					 type: "POST",
					 url: url + "/wed/wpcase.do",
					 data: {
						 action:"cancel_order",
						 wed_photo_order_no:$(this).attr("value")
						 //點擊button 把按鈕的 value="${wpordervo.wed_photo_order_no }"傳給後端把這筆訂單取消
					 },			
					 success: function (data){
						 alert(data+' 訂單取消囉!');
							$(":button").each(function(){
								if(data == $(this).attr("name")){
									$(this).text("訂單取消");
									$(this).prop("disabled",true);
									$(this).attr("class","btn btn-danger");
									$(this).nextAll(".btn-info").prop("disabled",true);
									$(this).nextAll(".btn-info").attr("class","btn btn-danger dropdown-toggle px-3");
								}
							})
					 }
				})
			}
		}
		

	})	
	$(".report").click(function(){
		$("[name='wed_photo_order_no']").val($(this).attr("value"));
	})
	$(".report_submit").click(function(){
		$.ajax({
			 type: "POST",
			 url: url + "/wed/wpcase.do",
			 data: {
				 action:"ven_report",
				 wp_vrep_d:$("[name='wp_vrep_d']").val(),
				 wed_photo_order_no:$("[name='wed_photo_order_no']").val()
			 },			
			 success: function (data){ //return wed_photo_order_no	
				var emery = data;
				$(":button").each(function(){					
					if(data == $(this).attr("name")){						
						emery = data+' 檢舉內容已送出!';
						$(this).text("　檢舉　");
						$(this).prop("disabled",true);
						$(this).nextAll(".btn-info").prop("disabled",true);						
					}					
				})
				alert(emery);
			 }
		 })
	})

	$(".update_order_Ajax").click(function(){ // 更新評價 更新訂單備註 能進controller還不能進資料庫
		$.ajax({
			type: "POST",
			url: url + "/wed/wpcase.do",
			data: {
				action:"update_order_Ajax",
				wed_photo_order_no:$("[name='wed_photo_order_no']").val(),
				order_explain:$("[name='order_explain']").val(),
				review_star:$('.valueSpan2').text(),
				review_content:$("[name='review_content']").val()				
			},
			success: function(data){
// 				alert(data+' 訂單更新成功');
			}			
		})		
	})
	$("[name='select_order_no']").change(function(){
		var order_no = $("option:selected").attr("value");

		$("tr").each(function(){
			if(order_no == $(this).children().eq(1).text() || "訂單編號" == $(this).children().eq(1).text()){
				$(this).show();
			}else if(order_no == 0){
				$(this).show();
// 				$("tr:hidden").show();
			}else{
				$(this).hide();
			}
		})	
	})
})