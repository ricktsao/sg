<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>控制台</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="shortcut icon" href="<?php echo site_url().$templateUrl?>/images/favicon.ico">
		
		<!-- basic styles -->
		<link href="<?php echo site_url().$templateUrl?>css/bootstrap.min.css" rel="stylesheet" />
		<link href="<?php echo site_url().$templateUrl?>css/font-awesome-4.6.1/css/font-awesome.min.css" rel="stylesheet" />
		<!--
		<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
		-->
		<!--[if IE 7]>
		  <link rel="stylesheet" href="<?php echo site_url().$templateUrl?>css/font-awesome-ie7.min.css" />
		<![endif]-->

		<!-- page specific plugin styles -->
		<!-- fonts -->
		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />

		<!-- ace styles -->
		<link rel="stylesheet" href="<?php echo site_url().$templateUrl?>css/ace.min.css" />
		<link rel="stylesheet" href="<?php echo site_url().$templateUrl?>css/ace-rtl.min.css" />
		<link rel="stylesheet" href="<?php echo site_url().$templateUrl?>css/ace-skins.min.css" />
		<link rel="stylesheet" href="<?php echo site_url().$templateUrl?>css/layout.css" />
		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="<?php echo site_url().$templateUrl?>css/ace-ie.min.css" />
		<![endif]-->
		<!-- inline styles related to this page -->

		<!-- ace settings handler -->

		<script src="<?php echo site_url().$templateUrl?>js/ace-extra.min.js"></script>

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lt IE 9]>
		<script src="<?php echo site_url().$templateUrl?>js/html5shiv.js"></script>
		<script src="<?php echo site_url().$templateUrl?>js/respond.min.js"></script>
		<![endif]-->
			
		
		
		<!-- basic scripts -->

		<!--[if !IE]> -->

		<script src="<?php echo site_url().$templateUrl?>js/jquery.min_203.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<![endif]-->

		<!--[if !IE]> -->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='<?php echo site_url().$templateUrl?>js/jquery-2.0.3.min.js'>"+"<"+"script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='<?php echo site_url().$templateUrl?>js/jquery-1.10.2.min.js'>"+"<"+"script>");
</script>
<![endif]-->

		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='<?php echo site_url().$templateUrl?>js/jquery.mobile.custom.min.js'>"+"<"+"script>");
		</script>
		<script src="<?php echo site_url().$templateUrl?>js/bootstrap.min.js"></script>
		<script src="<?php echo site_url().$templateUrl?>js/typeahead-bs2.min.js"></script>

		<!-- page specific plugin scripts -->

		<!--[if lte IE 8]>
		  <script src="<?php echo site_url().$templateUrl?>js/excanvas.min.js"></script>
		<![endif]-->

		<script src="<?php echo site_url().$templateUrl?>js/jquery-ui-1.10.3.custom.min.js"></script>
		<script src="<?php echo site_url().$templateUrl?>js/jquery.ui.touch-punch.min.js"></script>
		<script src="<?php echo site_url().$templateUrl?>js/jquery.slimscroll.min.js"></script>
		<script src="<?php echo site_url().$templateUrl?>js/jquery.easy-pie-chart.min.js"></script>
		<script src="<?php echo site_url().$templateUrl?>js/jquery.sparkline.min.js"></script>
		<script src="<?php echo site_url().$templateUrl?>js/flot/jquery.flot.min.js"></script>
		<script src="<?php echo site_url().$templateUrl?>js/flot/jquery.flot.pie.min.js"></script>
		<script src="<?php echo site_url().$templateUrl?>js/flot/jquery.flot.resize.min.js"></script>		
		
		
		<!-- ace scripts -->
		<script src="<?php echo site_url().$templateUrl?>js/ace-elements.min.js"></script>
		<script src="<?php echo site_url().$templateUrl?>js/ace.min.js"></script>
		
		<!--
		<link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.23/themes/smoothness/jquery-ui.css">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
		<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.23/jquery-ui.min.js"></script>
		!-->

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
		<div class="navbar navbar-default" id="navbar">
			<script type="text/javascript">
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
			</script>

			<div class="navbar-container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="#" class="navbar-brand">
						<small>
							<!-- <img  style="height:25px;" src="<?php echo base_url();?>template/<?php echo $this->config->item('backend_name');?>/images/logo.png"/> -->
							物業管理系統
						</small>
					</a><!-- /.brand -->
				</div><!-- /.navbar-header -->

				<div class="navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">
						


						<li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="<?php echo site_url().$templateUrl?>/avatars/user.jpg" alt="Photo" />
								<span class="user-info">
									<small>歡迎光臨, </small>
									<?php echo $this->session->userdata('user_name');?>
								</span>

								<i class="icon-caret-down"></i>
							</a>

							<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								
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
						</li>
					</ul><!-- /.ace-nav -->
				</div><!-- /.navbar-header -->
			</div><!-- /.container -->
		</div>

		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>

				<div class="sidebar" id="sidebar">
					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
					</script>

					<!--
					<div class="sidebar-shortcuts" id="sidebar-shortcuts">
						<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
							<button class="btn btn-success">
								<i class="icon-signal"></i>
							</button>

							<button class="btn btn-info">
								<i class="icon-pencil"></i>
							</button>

							<button class="btn btn-warning">
								<i class="icon-group"></i>
							</button>

							<button class="btn btn-danger">
								<i class="icon-cogs"></i>
							</button>
						</div>

						
						<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
							<span class="btn btn-success"></span>

							<span class="btn btn-info"></span>

							<span class="btn btn-warning"></span>

							<span class="btn btn-danger"></span>
						</div>
						
					</div>
					-->
					
					<?php echo $nvai_menu;?>

					<div class="sidebar-collapse" id="sidebar-collapse" style="display:none">
						<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
					</div>

					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
					</script>
				</div>

				<div class="main-content">
					<?php echo $breadcrumb_area;?>

					<div class="page-content">						
						<?php echo $page_header_area;?>
						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								
								<?php echo $alert_message_area;?>
								
								<?php echo $page_content;?>

						
								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div><!-- /.main-content -->

				<!-- 隱藏skin切換
				<div class="ace-settings-container" id="ace-settings-container">
					<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
						<i class="icon-cog bigger-150"></i>
					</div>

					<div class="ace-settings-box" id="ace-settings-box">
						<div>
							<div class="pull-left">
								<select id="skin-colorpicker" class="hide">
									<option data-skin="default" value="#438EB9">#438EB9</option>
									<option data-skin="skin-1" value="#222A2D">#222A2D</option>
									<option data-skin="skin-2" value="#C6487E">#C6487E</option>
									<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
								</select>
							</div>
							<span>&nbsp; 选择皮肤</span>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
							<label class="lbl" for="ace-settings-navbar"> 固定导航条</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
							<label class="lbl" for="ace-settings-sidebar"> 固定滑动条</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
							<label class="lbl" for="ace-settings-breadcrumbs">固定面包屑</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />
							<label class="lbl" for="ace-settings-rtl">切换到左边</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
							<label class="lbl" for="ace-settings-add-container">
								切换窄屏
								<b></b>
							</label>
						</div>
					</div>
				</div>
				-->
				
			</div><!-- /.main-container-inner -->

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->



		

		<!-- inline scripts related to this page -->

		<script type="text/javascript">
		
			jQuery(function($) {
			
				$('table th input:checkbox').on('click' , function(){						

					var that = this;
					$(this).closest('table').find("input[name='del[]']")
					.each(function(){
						this.checked = that.checked;
						$(this).closest('tr').toggleClass('selected');
					});						
				});


				$('form').submit(function(){
					$('#super_blocks').show();


				})
	
			})	
		</script>

		<div id='super_blocks' style="display:none;">			
			<img src="<?php echo site_url()."/".$templateUrl?>/images/loading2.gif"/>
		</div>

</body>
</html>