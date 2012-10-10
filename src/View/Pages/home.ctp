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
<script type="text/javascript" src="/js/jcarousellite.js"></script>
<div class="welcome"><div class="welcome-inner grids">
        <div class="grid grid-14 grid-suff2">
            <h1>Welcome to HighlightFront!</h1>
            <p>Get started by registering now. Need an invite? HighlightFront is the best place for high school athletes to upload, edit, and share their highlights with friends, fans, and scouts. Get noticed and keep an eye on the competition.</p>
            <div class="buttons clearfix">
                <div class="shadow1"><a class="control button2" href="/user/register"><span><span>Join Now</span></span></a></div>
                <div class="shadow1"><a class="control button2" href="/user/invite_request" id="inviteRequest"><span><span>Request Invite</span></span></a></div>
            </div>
        </div>

        <div class="grid grid-8 shadow2">
            <h1 class="block-head"><span><span><strong class="icon icon-lock"></strong> Already A Member?</span></span></h1>
            <div class="block-body form">
                <form action="/user/login" method="post">
                    <div class="row input"><input class="w240px" type="text" name="email" value="" placeholder="Your E-mail" /></div>
                    <div class="row input"><input class="w240px" type="password" name="password" value="" placeholder="Password" /></div>
                    <div class="row checkbox clearfix buttons">
                        <div class="fl">
                            <input type="checkbox" name="rememberme" id="rememberme" value="Password" />
                            <label for="rememberme" >Remember Me.</label>
                        </div>
                        <div class="fr">
                            <div class="buttons clearfix"><button class="control button1" type="submit"><span><span>Login</span></span></button></div>
                        </div>
                    </div>
                    <div class="row forgot last"><a href="/user/forgot_password">Forgot Password?</a></div>
                </form>
            </div>
        </div>
    </div></div>

<div class="grids">
    <div class="grid grid-12 featured">
        <h1 class="block-head2 clearfix">Featured Video</h1>
        <div class="block-body2"  style="width:460px; overflow: hidden">

            <div class="box_info shadow border" id="box_info1">
                <h4>What We Do</h4>
                <div class="frame_small">
                    <img alt="" width="100%" src="/img/2.png">
                </div>
                Ideasoft offers an inclusive software development process consisting of requirement analyses, design, programming, testing, maintenance and support.<br>
                <div class="clear"></div>
            </div>
        </div>
        <script>
            $(function() {
                $("#featured_carousel").jCarouselLite({
                    btnNext: ".next",
                    btnPrev: ".previous"
                });
            });
        </script>
    </div>
    <div class="grid grid-6 videos">
        <h1 class="block-head2 clearfix"><span class="filter"><strong class="icon-small icon-down2"></strong> Football</span></h1>
        <div class="block-body2">
            <div class="box_info shadow border" id="box_info2">
                <h4>Why Us</h4>
                <div class="frame_small">
                    <img alt="" width="100%" src="/img/3.png">
                </div>				
                Quality and Time -
                Cost Effective -
                Professional Team -
                Secured intellectual property<br>
                <div class="clear"></div>
            </div>
        </div>
    </div>
    <div class="grid grid-6 thumb">
        <h1 class="block-head2 clearfix">Billy Madison</h1>
        <div class="block-body2">
            <div class="box_info shadow border" id="box_info3">
                <h4>Success</h4>
                <div class="frame_small">
                    <img alt="" width="100%" src="/img/1.png">
                </div>				
                Here comes 3I, Tilllate, and TB.<br>
                <div class="clear"></div>
            </div>
        </div>
    </div>
</div>

<div class="grids">
    <h1 class="block-head2 clearfix"><?php echo __('Empresas WebTis destacadas')?></h1>
    <div class="wrapper_carousel shadow">
        <ul id="mycarousel" class="jcarousel-skin-home">

            <li><img class="normal" src="/img/logo/html5.png" alt="" /><img class="hover" src="/img/logo/html5_hover.png" alt="" /></li>
            <li><img class="normal" src="/img/logo/java.png" alt="" /><img class="hover" src="/img/logo/java_hover.png" alt="" /></li>
            <li><img class="normal" src="/img/logo/mysql.png" alt="" /><img class="hover" src="/img/logo/mysql_hover.png" alt="" /></li>
            <li><img class="normal" src="/img/logo/php.png" alt="" /><img class="hover" src="/img/logo/php_hover.png" alt="" /></li>
            <li><img class="normal" src="/img/logo/sqlserver.png" alt="" /><img class="hover" src="/img/logo/sqlserver_hover.png" alt="" /></li>

            <li><img class="normal" src="/img/logo/html5.png" alt="" /><img class="hover" src="/img/logo/html5_hover.png" alt="" /></li>
            <li><img class="normal" src="/img/logo/java.png" alt="" /><img class="hover" src="/img/logo/java_hover.png" alt="" /></li>
            <li><img class="normal" src="/img/logo/mysql.png" alt="" /><img class="hover" src="/img/logo/mysql_hover.png" alt="" /></li>
            <li><img class="normal" src="/img/logo/php.png" alt="" /><img class="hover" src="/img/logo/php_hover.png" alt="" /></li>
            <li><img class="normal" src="/img/logo/sqlserver.png" alt="" /><img class="hover" src="/img/logo/sqlserver_hover.png" alt="" /></li>
        </ul>	
    </div>
    <div class="clear"></div>
</div>
