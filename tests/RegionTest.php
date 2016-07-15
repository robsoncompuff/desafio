<?php

use PHPUnit\Framework\TestCase;
require_once __DIR__ . '/../app/models/Region.php';

class RegionTest extends TestCase{

    public function testGetNameIsEmpty(){
        $Region = new Region();
        $Region->setName('');
        $this->assertEmpty($Region->getName());
    }

    public function testGetName(){
        $Region = new Region();
        $Region->setName('Rio de Janeiro');
        $this->assertEquals('Rio de Janeiro', $Region->getName());
    }

    public function testGetUfIsEmpty(){
        $Region = new Region();
        $Region->setUf('');
        $this->assertEmpty($Region->getUf());
    }

    public function testGetUf(){
        $Region = new Region();
        $Region->setUf('RJ');
        $this->assertEquals('RJ', $Region->getUf());
    }
}