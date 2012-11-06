<?php

App::uses('AppController', 'Controller');

/**
 * Faqs Controller
 *
 * @property Faq $Faq
 */
class FaqsController extends AppController {

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
            throw new NotFoundException(__('Invalid faq'));
        }
        $this->set('faq', $this->Faq->read(null, $id));
    }

    

}
