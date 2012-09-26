 <?php
/**
 *
 * PHP 5
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright 2005-2012, Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright 2005-2012, Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.View.Layouts
 * @since         CakePHP(tm) v 0.10.0.1076
 * @license       MIT License (http://www.opensource.org/licenses/mit-license.php)
 */
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<?php echo $this->Html->charset(); ?>
	<title>
	<?php echo __('CakePHP: the rapid development php framework:'); ?>
		<?php echo $title_for_layout; ?>
	</title>
	<?php
		echo $this->Html->meta('icon');
		echo $this->Html->css('reset');
		echo $this->Html->css('grid');
		echo $this->Html->css('template');
		?>
		<!--[if IE 7]><?php echo  $this->Html->css('ie');?><![endif]-->
		<?php
			echo $this->Html->script('jquery.min');
			echo $this->Html->script('jquery.validate');
			echo $this->Html->script('js');
		echo $this->fetch('meta');
		echo $this->fetch('css');
		echo $this->fetch('script');
	?>

<style type="text/css">
#contact_error {color: #ff8989;}
</style>
</head>
<body>

<div id="header2">
	<div class="container_16 relative">
		<div class="grid_4">
			<?php echo 
				$this->Html->link(
				$this->Html->image('brand_idea.png', array('alt' => __('WebTIS'), 'border' => '0')),
				'http://www.cakephp.org/',
				array('target' => '_blank', 'escape' => false, 'class'=> 'brand_idea')
				);				
				?>

		</div>
		<div class="grid_12">
				<ul class="main_nav">
					<li class="current">
					<?php echo $this->Html->link('Home', '', array('class'=>'more'))?>
						
						<ul>
							<li><?php echo $this->Html->link('What We Do', '')?></li>
							<li><?php echo $this->Html->link('Why Us', '')?></li>
							<li><?php echo $this->Html->link('Success', '')?></li>
						</ul>
					</li>
					<li class="">
						<?php echo $this->Html->link('Services', '', array('class'=>'more'))?>
						<ul>
							<li><?php echo $this->Html->link('Software Development', '')?></li>
							<li><?php echo $this->Html->link('Web Development', '')?></li>
							<li><?php echo $this->Html->link('Quality Assurance', '')?></li>
						</ul>
					</li>
					<li class="">
						
						<?php echo $this->Html->link('Careers', '', array('class'=>'more'))?>
						<ul>
							<li><?php echo $this->Html->link('Software Developer', '')?></li>
							<li><?php echo $this->Html->link('Quality Assurance Engineering', '')?></li>					
						</ul>
					</li>
					<li class="">
						<?php echo $this->Html->link('Contact', '')?>
					</li>
				</ul>
			<div class="clear"></div>
		</div>
		<div class="clear"></div>
		<div class="grid_16" style="border-bottom: 2px solid #1e4f8a;">
			<br>
		</div>
		<div class="clear"></div>
	</div>
</div>
<div id="body">
<?php echo $this->Session->flash(); ?>
<?php echo $this->fetch('content'); ?>
</div>

<div id="footer" class="container_12">
	<div class="grid_12" style="border-top: 2px solid #1e4f8a;">
		<br>
	</div>
	<div class="clear"></div>
	<div class="grid_4">
		<div style="width: 50%; display: inline-block; zoom: 1; *display: inline;">
			<?php echo 
				$this->Html->link(
				$this->Html->image('brand_idea_footer.png', array('alt' => __('WebTIS'), 'border' => '0')),
				'http://www.cakephp.org/',
				array('target' => '_blank', 'escape' => false, 'class'=> 'brand_idea')
				);				
				?>
		</div>
		<div style="width: 45%; margin-left: 2%; display: inline-block; zoom: 1; *display: inline;">
			<ul class="social">
				<li>
				<?php echo 
				$this->Html->link(
				$this->Html->image('social/facebook_32.png', array('alt' => __('Encuentranos en Facebook'))),
				'https://www.facebook.com/ideasoftBo',
				array('target' => '_blank', 'escape' => false)
				);				
				?>
				</li>
				<li>
				<?php echo 
				$this->Html->link(
				$this->Html->image('social/twitter_32.png', array('alt' => __('Encuentranos en Facebook'))),
				'https://twitter.com/IdeaSoftinc',
				array('target' => '_blank', 'escape' => false)
				);				
				?>
				</li>
				<li>
				<?php echo 
				$this->Html->link(
				$this->Html->image('social/linkedin_32.png', array('alt' => __('Encuentranos en Facebook'))),
				'http://www.linkedin.com/company/2330610?trk=tyah',
				array('target' => '_blank', 'escape' => false)
				);				
				?>
				</li>
			</ul>
		</div>
		<div class="clear"></div>
		<hr>
		<div>
			&copy; 2012 Ideasoft Inc. All rights reserved.<br>
		</div>
	</div>
	<div class="grid_2">
		<b><?php echo $this->Html->link('Home', '')?></b><br>
		<hr>
		<ul>
			<li><?php echo $this->Html->link('What We Do', '')?></li>
							<li><?php echo $this->Html->link('Why Us', '')?></li>
							<li><?php echo $this->Html->link('Success', '')?></li>
		</ul>
	</div>
	<div class="grid_2">
		<b><a href="">Services</a></b><br>
		<hr>
		<ul>
			<li><a href="">Software Development</a></li>
			<li><a href="">Web Development </a></li>
			<li><a href="">Quality Assurance</a></li>
		</ul>
	</div>
	<div class="grid_2">
		<b><a href="">Careers</a></b><br>
		<hr>
		<ul>
			<li><a href="">Software Developer</a></li>
			<li><a href="">Quality Assurance Engineering</a></li>
		</ul>
	</div>
	<div class="grid_2">
		<b><a href="">Contact</a></b><br>
		<hr>
		<img alt="" src="img/icon_map.png">
	</div>
	<div class="clear"></div>
</div>


</body>
</html>
