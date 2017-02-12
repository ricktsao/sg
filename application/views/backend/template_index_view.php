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
		<link rel="stylesheet" href="<?php echo site_url().$templateUrl?>lib/jquery-ui-1.12.1.custom/jquery-ui.min.css">
		
		<link rel="stylesheet" href="<?php echo site_url().$templateUrl?>lib/elFinder-2.1.21/css/elfinder.min.css">	
	
		<script
  src="https://code.jquery.com/jquery-2.2.4.min.js"
  integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
  crossorigin="anonymous"></script>

		
		<script src="<?php echo site_url().$templateUrl?>lib/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>		
		<script src="<?php echo site_url().$templateUrl?>lib/tinymce/tinymce.min.js"></script>		
		<script src="<?php echo site_url().$templateUrl?>lib/elFinder-2.1.21/js/elfinder.min.js"></script>
		<script src="<?php echo site_url().$templateUrl?>lib/elFinder-2.1.21/js/i18n/elfinder.zh_TW.js"></script>
		<script src="<?php echo site_url().$templateUrl?>lib/default.js"></script>

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
		

	

	</script>
</body>
</html>