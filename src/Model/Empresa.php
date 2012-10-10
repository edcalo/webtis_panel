<?php
App::uses('AppModel', 'Model');
/**
 * Empresa Model
 *
 */
class Empresa extends AppModel {
/**
 * Use table
 *
 * @var mixed False or table name
 */
	public $useTable = '_empresas';
/**
 * Display field
 *
 * @var string
 */
	public $displayField = 'sigla';
/**
 * Validation rules
 *
 * @var array
 */
	public $validate = array(
		'nombre_empresa' => array(
			'notempty' => array(
				'rule' => array('notempty'),
				//'message' => 'Your custom message here',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
	);
}
