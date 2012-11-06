<?php

class DATABASE_CONFIG {

    public $default = array(
        'datasource' => 'Database/Postgres',
        'persistent' => false,
        'host' => 'localhost',
        'login' => 'postgres',
        'password' => 'postgres',
        'database' => 'labinfsis',
        'schema'=>'webtis'
    );
    public $faqs = array(
        'datasource' => 'Database/Postgres',
        'persistent' => false,
        'host' => 'localhost',
        'login' => 'postgres',
        'password' => 'postgres',
        'database' => 'labinfsis',
        'schema'=>'faqs'
    );

}
