<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
	<link rel="stylesheet" href="<?php echo base_url();?>template/<?php echo $this->config->item('backend_name');?>/css/login.css">
</head>

<body>
    <div class="primary">
		<form action="<?php echo bUrl("conformAccountPassword",FALSE)?>" method="post" class="loginPanel">	
            <h1 class="line">物業管理系統<span>ver Beta</span></h1>
            <div class="row">
				<input type="text" name="id" value="<?php echo tryGetArrayValue('id',$edit_data)?>" placeholder="請輸入帳號">
            </div>
            <div class="row error">
                
            </div>
            <div class="row">
				<input type="password" name="password" value="<?php echo tryGetArrayValue('password',$edit_data)?>" placeholder="請輸入密碼">
            </div>
            <div class="row error">
                
            </div>
            <div class="row inline">
				<input type="text" name="vcode" placeholder="驗證碼" >
                <img class="vcode" id="img_verifying_code" align="absmiddle" src="<?php echo base_url()?>verifycodepic" style="cursor:pointer" onclick="RebuildVerifyingCode()">
				<a href="javascript: void(0)" onclick="RebuildVerifyingCode()" >換一張</a>
            </div>
            <div class="row error">
               
            </div>
            <div class="row line">
				<button type="submit" class="myButton">登入</button>              
            </div>
            <div class="row error">
				<?php echo form_error('id');?>
				<?php echo form_error('password');?>
				<?php echo form_error('vcode');?>
                <?php echo tryGetArrayValue('error_message',$edit_data);?>
            </div>
        </form>
        <div class="footerContent">
            濬煬數位 版權所有 &copy; 2017 All Rights Reserved.
        </div>
    </div>
	
	<script src="<?php echo base_url();?>template/<?php echo $this->config->item('backend_name');?>/js/jquery-1.9.1.min.js"></script>
	<script language="javascript">

	//重新產生驗證碼
	function RebuildVerifyingCode( )
	{
		var verifying_code_url = $('#img_verifying_code').attr('src').split( "?" );
		verifying_code_url = verifying_code_url[0];		
		$('#img_verifying_code').attr('src',verifying_code_url + "?" + Math.random());
	}

	</script>
</body>

</html>


