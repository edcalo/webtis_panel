<?php

App::import('Vendor', 'QrCode.phpqrcode' . DS . 'qrlib');
App::uses('AppController', 'Controller');

/**
 * Faqs Controller
 *
 * @property Faq $Faq
 */
class FaqsController extends AppController {

    public $components = array('QrGenerator');

    /**
     * index method
     *
     * @return void
     */
    public function index() {
        $this->Faq->recursive = 0;
        $faqs = $this->paginate();
        if ($this->request->is('requested')) {
            return $faqs;
        } else {
            $this->set('faqs', $faqs);
        }
    }

    /**
     * view method
     *
     * @throws NotFoundException
     * @param string $id
     * @return void
     */
    public function view($id = null) {
        $this->Faq->id = $id;
        if (!$this->Faq->exists()) {
            $this->set('faq', $this->Faq->read(null, $id));
        }
        $this->set('faq', $this->Faq->read(null, $id));
    }

    public function qr() {
        $this->layout = null;
        $this->set("qr", $this->QrGenerator->test());
    }

}
