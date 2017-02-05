<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>物業管理系統</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="shortcut icon" href="<?php echo site_url().$templateUrl?>/images/favicon.ico">
		<link rel="stylesheet" href="<?php echo site_url().$templateUrl?>css/default.css">
		<!-- basic styles -->	
		<link href="<?php echo site_url().$templateUrl?>css/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" />	

		<script
  src="https://code.jquery.com/jquery-2.2.4.min.js"
  integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
  crossorigin="anonymous"></script>

		<!--elfinder-->
		<link rel="stylesheet" type="text/css" media="screen" href="<?php echo site_url()."/".$templateUrl?>js/elfinder/css/elfinder.min.css">
		<link rel="stylesheet" type="text/css" media="screen" href="<?php echo site_url()."/".$templateUrl?>js/elfinder/css/theme.css">
		<script type="text/javascript" src="<?php echo site_url()."/".$templateUrl?>js/elfinder/elfinder.min.js"></script>
		<script type="text/javascript" src="<?php echo site_url()."/".$templateUrl?>/elfinder/js/i18n/elfinder.zh_TW.js"></script>
		
		<!--tiny mce-->
		<script type="text/javascript" src="<?php echo site_url()."/".$templateUrl?>js/tinymce/tinymce.min.js"></script>
		
		
		<!-- fancybox -->
		<link rel="stylesheet" href="<?php echo site_url()."/".$templateUrl?>js/fancybox/jquery.fancybox.css?v=2.1.5" type="text/css" media="screen" />
		<script type="text/javascript" src="<?php echo site_url()."/".$templateUrl?>js/fancybox/jquery.fancybox.pack.js?v=2.1.5"></script>
		
		<!-- custom scripts -->
		<script type="text/javascript" src="<?php echo site_url()."/".$templateUrl?>js/form.js"></script>
		<script type="text/javascript" src="<?php echo site_url()."/".$templateUrl?>js/datePicker/WdatePicker.js"></script>		
		
		

		<!-- 本頁使用-->
		<?php echo $style_css;?>
		<!-- 本頁使用-->
		<?php echo $style_js;?>
		
		
	</head>

	<body>
		<div id="navbar">
				<div id="nav-brand" class="nav-fontStyle">
				<div>物業管理系統</div></div>
				<div id="nav-userInfo">
					<div class="nav-fontStyle"><?php echo $this->session->userdata('user_name');?></div>
				</div>
					<ul id="nav-dropdown" class="list-unstyle" style="display: none">								
							<?php if ($this->session->userdata("f_user_id") === FALSE ){ ?>
							<li>
								<a href="<?php echo backendUrl("authEdit");?>">
									<i class="icon-cog"></i>
									更改密碼
								</a>
							</li>
							<?php } else { ?>
							<li>
								<a href="<?php echo frontendUrl("home");?>">
									<i class="icon-cog"></i>
									返回前台
								</a>
							</li>
							
							<?php } ?>
							<li class="divider"></li>

							<li>
								<a href="<?php echo bUrl("logout");?>">
									<i class="icon-off"></i>
									登出												
								</a>
							</li>
						</ul>
			
				

			
		</div>

		
				<div id="sidebar">
					<?php echo $nvai_menu;?>
					
				</div>

			<div id="main-content">
					<?php echo $breadcrumb_area;?>
					<div class="page-content">						
						<?php echo $page_header_area;?>
						<?php echo $alert_message_area;?>
						<?php echo $page_content;?>
					</div>
				</div>	

	<script>
		

		$('#nav-userInfo').click(function(){
			var target= $('#nav-dropdown');
			if(target.is(":hidden")){
				target.show();
			}else{
				target.hide();
			}
		})


	</script>
</body>
</html>