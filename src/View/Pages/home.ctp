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
<?php
echo $this->Html->css('screen');
echo $this->Html->script('easySlider1.7');
?>

<script>
    $(function(){
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
<div class="welcome">
    <div class="welcome-inner grids">
        <div class="grid grid-14 grid-suff2">
            <div id="slider">
                <ul>				
                    <li>
                        <div class="frame" style="margin-left: 15px;">
                            <h1>Welcome to HighlightFront!</h1>
                            <p>Get started by registering now. Need an invite? HighlightFront is the best place for high school athletes to upload, edit, and share their highlights with friends, fans, and scouts. Get noticed and keep an eye on the competition.</p>
                            <div class="buttons clearfix">
                                <div class="shadow1"><a class="control button2" href="<?php echo $this->Html->url(array("controller" => "users","action" => "register"));?>"><span><span>Join Now</span></span></a></div>
                                <div class="shadow1"><a class="control button2" href="<?php echo $this->Html->url(array("controller" => "users","action" => "invite"));?>" id="inviteRequest"><span><span>Request Invite</span></span></a></div>
                            </div>    

                        </div>
                    </li>
                    <li>
                        <div class="frame" style="margin-left: 15px;">
                            <h1>Welcome to HighlightFront!</h1>
                            <p>Get started by registering now. Need an invite? HighlightFront is the best place for high school athletes to upload, edit, and share their highlights with friends, fans, and scouts. Get noticed and keep an eye on the competition.</p>
                            <div class="buttons clearfix">
                                <div class="shadow1"><a class="control button2" href="<?php echo $this->Html->url(array("controller" => "users","action" => "register"));?>"><span><span>Join Now</span></span></a></div>
                                <div class="shadow1"><a class="control button2" href="<?php echo $this->Html->url(array("controller" => "users","action" => "invite"));?>" id="inviteRequest"><span><span>Request Invite</span></span></a></div>
                            </div>    

                        </div>
                    </li>
                </ul>
            </div>

        </div>
        <div class="grid grid-8 shadow2">
            <h1 class="block-head"><span><span><strong class="icon icon-lock"></strong> <?php echo __('Ya tengo una cuenta') ?></span></span></h1>
            <div class="block-body form">
                <form action="<?php echo $this->Html->url(array("controller" => "users","action" => "login"));?>" method="post">
                    <div class="row input"><input class="w240px" type="text" name="Email" value="" placeholder="Su E-mail" /></div>
                    <div class="row input"><input class="w240px" type="password" name="Password" value="" placeholder="Password" /></div>
                    <div class="row checkbox clearfix buttons">
                        <div class="fl">
                            <input type="checkbox" name="rememberme" id="rememberme" value="rememberme" />
                            <label for="rememberme" ><?php echo __('Recordarme.') ?></label>
                        </div>
                        <div class="fr">
                            <div class="buttons clearfix"><button class="control button1" type="submit"><span><span>Login</span></span></button></div>
                        </div>
                    </div>
                    <div class="row forgot last"><a href="<?php echo $this->Html->url(array("controller" => "users","action" => "forgot_password"));?>"><?php echo __('¿Olvido su contraseña?') ?></a></div>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="grids">
    <h1 class="block-head2 clearfix"><?php echo __('Empresas WebTis destacadas') ?></h1>
    <div style="margin: 15px 0;">
        <div class="wrapper_carousel shadow">
            <ul id="mycarousel" class="jcarousel-skin-home">
                <?php
                    $empresas = array();
                    $x1 = new stdClass();
                    $x1->image = "html5.png";
                    $x1->image_hover = "html5_hover.png";
                    
                    array_push($empresas, $x1);
                    $x2 = new stdClass();
                    $x2->image = "java.png";
                    $x2->image_hover = "java_hover.png";
                    array_push($empresas, $x2);
                    
                    $x3 = new stdClass();
                    $x3->image = "mysql.png";
                    $x3->image_hover = "mysql_hover.png";
                    array_push($empresas, $x3);
                    
                    $x4 = new stdClass();
                    $x4->image = "php.png";
                    $x4->image_hover = "php_hover.png";
                    array_push($empresas, $x4);
                    
                    $x5 = new stdClass();
                    $x5->image = "sqlserver.png";
                    $x5->image_hover = "sqlserver_hover.png";
                    array_push($empresas, $x5);
                    
                    $x6 = new stdClass();
                    $x6->image = "html5.png";
                    $x6->image_hover = "html5_hover.png";                    
                    array_push($empresas, $x6);
                    
                    $x7 = new stdClass();
                    $x7->image = "java.png";
                    $x7->image_hover = "java_hover.png";
                    array_push($empresas, $x7);
                    
                    $x8 = new stdClass();
                    $x8->image = "mysql.png";
                    $x8->image_hover = "mysql_hover.png";
                    array_push($empresas, $x8);
                    
                    $x9 = new stdClass();
                    $x9->image = "php.png";
                    $x9->image_hover = "php_hover.png";
                    array_push($empresas, $x9);
                    
                    $x10 = new stdClass();
                    $x10->image = "sqlserver.png";
                    $x10->image_hover = "sqlserver_hover.png";
                    array_push($empresas, $x10);
                    
                ?>
                <?php 
                foreach ($empresas as $empresa){
                    echo "<li>".$this->Html->image("logo/".$empresa->image, array("alt" => "Brownies", "class"=>"normal"));
                    echo $this->Html->image("logo/".$empresa->image_hover, array("alt" => "Brownies", "class"=>"hover"))."</li>";
                 }?>
            </ul>	
        </div>
    </div>
    <div class="clear"></div>
</div>

<div class="grids">
    <?php 
    $faqs = $this->requestAction('faqs/index');
    foreach ($faqs as $faq){
    ?>
    <div class="grid grid-6 thumb">
        <h1 class="block-head2 clearfix"><?php echo $this->Html->link($faq['Faq']['pregunta'], array("controller"=>"faqs", "action"=>"view", $faq['Faq']['id']))?></h1>
        <div class="block-body2">
            <div class="box_info shadow border" id="box_info3">
                
                <div class="frame_small">
                    <img alt="" width="100%" src="/img/1.png">
                </div>				
                <?php echo $faq['Faq']['respuesta']?><br>
                <div class="clear"></div>
            </div>
        </div>
    </div>
    <?php }?>
    
    <!--div class="grid grid-12 featured">
        <h1 class="block-head2 clearfix">Como usar mi cuenta de WebTis</h1>
        <div class="block-body2"  style="width:460px; overflow: hidden">

            <div class="box_info shadow border" id="box_info1">
                
                <div class="clear"></div>
            </div>
        </div>
    </div-->
</div>