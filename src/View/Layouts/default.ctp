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
        <title> <?php echo $title_for_layout; ?> </title>
        <?php
        echo $this->Html->css('cake.generic');
        echo $this->Html->meta('icon');
        echo $this->Html->css('reset');
        echo $this->Html->css('grids');
        echo $this->Html->css('grids-temp');
        echo $this->Html->css('layouts');
        echo $this->Html->css('icons');
        echo $this->Html->css('controls');
        echo $this->Html->css('forms');
        echo $this->Html->script('jquery-1.8.2');
        echo $this->Html->script('jquery-ui.min');

        echo $this->Html->script('jquery.form.min');
        echo $this->Html->script('jcarousellite');
        echo $this->Html->script('index');
        echo $this->Html->script('jquery.enablePlaceholder');
        echo $this->Html->script('jquery.MetaData');

        echo $this->Html->css('jquery.autocomplete');
        echo $this->Html->script('jquery.autocomplete.pack');

        
        ?>
        <!--[if lt IE 8]><?php echo $this->Html->css('ie-lt-ie8'); ?><![endif]-->
        <!--[if IE 8]><?php echo $this->Html->css('ie-ie8'); ?><![endif]-->

        <?php
        echo $this->fetch('meta');
        echo $this->fetch('css');
        echo $this->fetch('script');
        ?>
    </head>
    <!--body class="frontpage" -->
    <body>
        <!-- #wrapper -->
        <div id="wrapper">
            <div id="wrapper-inner">

                <!-- #topheader -->
                <div id="topheader">
                    <div class="grids">
                        <div class="logo grid grid-6">
                            <?php
                            echo $this->Html->link(
                                    $this->Html->image('logo.png', array('alt' => __('Logo WebTis'), 'border' => '0')), '/', array('escape' => false)
                            );
                            ?>
                        </div>
                        <div class="topmenu grid grid-13">
                            <div class="topmenu grid grid-13">
                                <!--p><a href="/user/profile">Hello, Elvis Caceres <span style="background-color: red; color: white; border-radius: 10px 10px 10px 10px;  width: 20px; padding: 3px;">4</span></a></p-->
                                <div class="clearfix">
                                    <ul>
                                        <li class="<?php echo ($page=="home")?"active":""?>"><?php echo $this->Html->link(__('Inicio'), '/'); ?></li>
                                        <li class="<?php echo ($page=="")?"active":""?>"><?php echo $this->Html->link(__('WebTis'), '/'); ?></li>
                                        <li class="<?php echo ($page=="empresas")?"active":""?>"><?php echo $this->Html->link(__('Empresas WebTis'), array("controller"=>"empresas", "action"=>"index")); ?></li>
                                        <li class="<?php echo ($page=="faqs")?"active":""?>"><?php echo $this->Html->link(__('Preguntas Frecuentes'), array("controller"=>"faqs", "action"=>"index")); ?></li>
                                        <li class="<?php echo ($page=="")?"active":""?>"><?php echo $this->Html->link(__('Contacto'), '/'); ?></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="search grid grid-5">
                            <div class="clearfix">
                                <form action="/search/found/" method="post">
                                    <div class="control search">
                                        <span>
                                            <span>
                                                <input id="quicksearchtext" class="dropdown" type="text" name="searchstring" value="" placeholder="Buscar" autocomplete="off" />
                                                <button class="blank" type="submit"><strong class="icon icon-search"></strong></button>
                                            </span>
                                        </span>
                                    </div>
                                    <div class="dropdownlist"></div>
                                </form>
                            </div>
                            <div class="clearfix">

                            </div>
                        </div>
                    </div>
                </div>
                <!-- / #topheader -->

                <!-- #submenu -->

                <!--div id="submenu">
                    <ul>
                        <li class="active"><a href="/user/profile">Profile</a></li>
                        <li><a href="/user/settings">Settings</a></li>
                        <li><a href="/user/notifications">Notifications</a></li>
                        <li><a href="/user/change_pas">Change password</a></li>
                        <li><a href="/user/logout">Logout</a></li>
                    </ul>
                </div -->
                <!-- / #submenu -->

                <!-- #center -->
                <div id="center">
                    <div id="content" class="grids">
                        <?php echo $this->Session->flash(); ?>
                        <?php echo $this->fetch('content'); ?>
                    </div>
                </div>
                <!-- / #center -->

            </div>
        </div>
        <!-- / #wrapper -->

        <!-- #footer -->
        <div id="footer" class="grids">
            <div class="grid grid-4">
                <?php
                echo $this->Html->link(
                        $this->Html->image('logo-small.png', array('alt' => __('Logo WebTis'), 'border' => '0')), '/', array('escape' => false)
                );
                ?>

            </div>
            <div class="grid grid-8">
                <p class="copyright">&copy; Copyright 2012 WebTIS Front derechos reservados</p>
            </div>
            <div class="grid grid-12" style="float: right;">
                <ul class="menu">
                    <li>
                        <?php
                        echo $this->Html->link(
                                __('Acerca de'), array('controller' => 'pages', 'action' => 'about')
                        );
                        ?>
                    </li>
                    <li>
                        <?php
                        echo $this->Html->link(
                                __('Contacto'), array('controller' => 'pages', 'action' => 'contacto')
                        );
                        ?>
                    </li>
                    <li>
                        <?php
                        echo $this->Html->link(
                                __('Términos y Condiciones'), array('controller' => 'pages', 'action' => 'politica')
                        );
                        ?>
                    </li>
                </ul>
            </div>
        </div>
        <!-- / #footer -->
    </body>
</html>
