<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
App::import('Vendor', 'phpqrcode'.DS.'qrlib');
//App::import('Vendor', 'QrCode.phpqrcode'.DS.'qrlib');

//CakePlugin::load('phpqrcode');
/**
 * Description of QrGenerator
 *
 * @author elvis.caceres
 */
class QrGeneratorComponent extends Component{
    //put your code here
    public function test() {
        return QRcode::png('PHP QR Code :)');
    }
}

?>
