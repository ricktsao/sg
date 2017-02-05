<?php
$admin_auth = $this->session->userdata("user_auth");

if ( $admin_auth !== false) {
	
?>
	<ul id="nav-list" class="list-unstyle">
		<?php foreach ($left_menu_list as $key => $module_item):
			
		  ?>
			
			<?php if (isNotNull(tryGetData('id', $module_item,NULL)) 
					&& isNotNull(tryGetData('dir', $module_item,NULL)) 
					&& in_array($module_item["id"], $admin_auth)
					&&  $module_item["dir"]==1) {						?>		
				
				<li <?php echo  $module_sn == $module_item["sn"]?'class="open"':''  ?>>	
					<a href="#" >
						<span> <?php echo $module_item["title"]; ?>  </span>	
					</a>
					
					<ul class="submenu" <?php echo  $module_parent_sn == $module_item["sn"]?'style="display: block;"':''  ?>>
						
					
					<?php						
						foreach($module_item_map[$module_item["sn"]]["item_list"] as $item): 	
						if(in_array($item["id"], $admin_auth)){
							
					?>
						<li <?php echo  $module_id== $item["id"]?'class="active"':''  ?>>
							<a href="<?php echo $item["url"]?>">
								<i class="icon-double-angle-right"></i>						
								<?php echo $item["title"]?>
							</a>
						</li>			
					<?php 
						}
						endforeach; 
					?>
					
					</ul>
					
				</li>
			<?php  
				} else if(in_array($module_item["id"], $admin_auth)){ 
				
				$url = $module_item["url"];
				if($module_item["id"] == 'guards' || $module_item["id"] == 'mgr')
				{
					$url = 'javascript:void(0)';
				}
			?>
				
				<li <?php echo  $module_id== $module_item["id"]?'class="active"':''  ?>>
					<a href="<?php echo $url?>">
						
						<span class="menu-text"> <?php echo $module_item["title"]?> </span>
					</a>
				</li>
			
			<?php  } ?>

		<?php endforeach; ?>
	</ul>
<?php
}
?>