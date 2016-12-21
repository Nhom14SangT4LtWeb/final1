<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- PHAN TAO BUTTON CHAT VOI DOI HO TRO KY THUAT -->
<button class="btn btn-info fixChat" >ĐỘI HỖ TRỢ KỸ THUẬT</button>
<div id="showhidechatbox" class="panel panel-info fixPa">
	<div class="panel-heading">
		<strong>ĐỘI HỖ TRỢ KỸ THUẬT CHÀO BẠN</strong>
	</div>
	<div class="panel-body">
		<div class="row">
			<span class="badge pull-left"><h5>Chào bạn!</h5></span> <br>
			<br> <span class="badge"><h5>Bạn đang gặp phải vấn
					đề gì?</h5></span>
			<div class="input-group fixInp">
				<input type="text" class="form-control"> <span
					class="input-group-btn">
					<button class="btn btn-default" type="button">Send!</button>
					<button type="button" class="btn btn-default ">
						<span class="glyphicon glyphicon-paperclip"></span>
					</button>
				</span>
			</div>
			<!-- /input-group -->
		</div>
	</div>
</div>
<script>
    $(document).ready(function(){
        $(".fixChat").click(function(){
            $("#showhidechatbox").toggle();
    })
    })
</script>