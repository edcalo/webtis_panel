<script type="text/javascript">
$(document).ready(function() {
	var h_box_info1 = $('#box_info1').height();
	var h_box_info2 = $('#box_info2').height();
	var h_box_info3 = $('#box_info3').height();
	var max=h_box_info1;
	if (max < h_box_info2) max=h_box_info2;
	if (max < h_box_info3) max=h_box_info3;
	$('.box_info').height(max);
});
window.onload = function() {
	
};
</script>

<script type="text/javascript" src="js/jquery.jcarousel.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/skin_home.css" />
<script type="text/javascript" src="js/easySlider1.7.js"></script>
<link href="css/screen.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript">
jQuery(document).ready(function() {
    jQuery('#mycarousel').jcarousel();
});
</script>
<script type="text/javascript">
		$(document).ready(function(){
			$("#slider li").width($("#slider").width());
			$("#slider").easySlider({
				auto: false, 
				continuous: true,
				numeric: true
			});
			$(window).resize(function(){
				$("#slider li").width($(".slider").width());
			});
		});	
</script>

	<div class="container_16 mt20">
		<div class="grid_16 relative">
			
			<div id="slider" class="shadow">
				<ul>				
					<li><div class="frame"><a href="javascript:void(0);"><img width="100%" src="img/slider/01.jpg" alt="" /></a></div></li>
					<li><div class="frame"><a href="javascript:void(0);"><img width="100%" src="img/slider/02.jpg" alt="" /></a></div></li>
					<li><div class="frame"><a href="javascript:void(0);"><img width="100%" src="img/slider/03.jpg" alt="" /></a></div></li>
					<li><div class="frame"><a href="javascript:void(0);"><img width="100%" src="img/slider/04.jpg" alt="" /></a></div></li>
					<li><div class="frame"><a href="javascript:void(0);"><img width="100%" src="img/slider/05.jpg" alt="" /></a></div></li>			
				</ul>
			</div>
			
		</div>
		<div class="clear"></div>
	</div>
		
	<div class="container_12 mt20">
		<div class="grid_4">
			<div class="box_info shadow border" id="box_info1">
				<h4>What We Do</h4>
				<div class="frame_small">
					<img alt="" width="100%" src="img/2.png">
				</div>
				Ideasoft offers an inclusive software development process consisting of requirement analyses, design, programming, testing, maintenance and support.<br>
				<div class="clear"></div>
			</div>
		</div>
		<div class="grid_4">
			<div class="box_info shadow border" id="box_info2">
				<h4>Why Us</h4>
				<div class="frame_small">
					<img alt="" width="100%" src="img/3.png">
				</div>				
				Quality and Time -
				Cost Effective -
				Professional Team -
				Secured intellectual property<br>
				<div class="clear"></div>
			</div>
		</div>
		<div class="grid_4">
			<div class="box_info shadow border" id="box_info3">
				<h4>Success</h4>
				<div class="frame_small">
						<img alt="" width="100%" src="img/1.png">
				</div>				
				Here comes 3I, Tilllate, and TB.<br>
				<div class="clear"></div>
			</div>
		</div>
		<div class="clear"></div>
	</div>
	<div class="container_16 mt20">
		<div class="grid_16">
			<div class="wrapper_carousel shadow">
				<ul id="mycarousel" class="jcarousel-skin-home">
				  
				    <li><img class="normal" src="img/logo/html5.png" alt="" /><img class="hover" src="img/logo/html5_hover.png" alt="" /></li>
				    <li><img class="normal" src="img/logo/java.png" alt="" /><img class="hover" src="img/logo/java_hover.png" alt="" /></li>
				    <li><img class="normal" src="img/logo/mysql.png" alt="" /><img class="hover" src="img/logo/mysql_hover.png" alt="" /></li>
				    <li><img class="normal" src="img/logo/php.png" alt="" /><img class="hover" src="img/logo/php_hover.png" alt="" /></li>
				    <li><img class="normal" src="img/logo/sqlserver.png" alt="" /><img class="hover" src="img/logo/sqlserver_hover.png" alt="" /></li>
				  
				    <li><img class="normal" src="img/logo/html5.png" alt="" /><img class="hover" src="img/logo/html5_hover.png" alt="" /></li>
				    <li><img class="normal" src="img/logo/java.png" alt="" /><img class="hover" src="img/logo/java_hover.png" alt="" /></li>
				    <li><img class="normal" src="img/logo/mysql.png" alt="" /><img class="hover" src="img/logo/mysql_hover.png" alt="" /></li>
				    <li><img class="normal" src="img/logo/php.png" alt="" /><img class="hover" src="img/logo/php_hover.png" alt="" /></li>
				    <li><img class="normal" src="img/logo/sqlserver.png" alt="" /><img class="hover" src="img/logo/sqlserver_hover.png" alt="" /></li>
				</ul>	
			</div>
		</div>
		<div class="clear"></div>
	</div>

