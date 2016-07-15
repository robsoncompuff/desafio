<?php

use PHPUnit\Framework\TestCase;
require_once __DIR__ . '/../app/models/Call.php';
require_once __DIR__ . '/../app/models/Region.php';

require_once __DIR__ . '/../app/dbs/DbCall.php';
require_once __DIR__ . '/../app/dbs/DbRegion.php';

class CallTest extends TestCase{

    public function testGetTypeIsEmpty(){
        $Call = new Call();
        $Call->setType('');
        $this->assertEmpty($Call->getType());
    }

    /**
     * @depends testGetTypeIsEmpty
     */
    public function testGetTypeOthers(){
        $Call = new Call();
        $Call->setType('other');
        $this->assertEmpty($Call->getType());
    }

    /**
     * @depends testGetTypeOthers
     */
    public function testGetTypeChat(){
        $Call = new Call();
        $Call->setType(Call::TYPE_CHAT);
        $this->assertEquals('chat', $Call->getType());
    }

    /**
     * @depends testGetTypeChat
     */
    public function testGetTypePhone(){
        $Call = new Call();
        $Call->setType(Call::TYPE_PHONE);
        $this->assertEquals('phone', $Call->getType());
    }

    /**
     * @depends testGetTypePhone
     */
    public function testGetTypeEmail(){
        $Call = new Call();
        $Call->setType(Call::TYPE_EMAIL);
        $this->assertEquals('email', $Call->getType());
    }

    /**
     * @depends testGetTypeEmail
     */
    public function testGetReasonIsEmpty(){
        $Call = new Call();
        $Call->setReason('');
        $this->assertEmpty($Call->getReason());
    }

    /**
     * @depends testGetReasonIsEmpty
     */
    public function testGetReasonOthers(){
        $Call = new Call();
        $Call->setReason('other');
        $this->assertEmpty($Call->getReason());
    }

    /**
     * @depends testGetReasonOthers
     */
    public function testGetReasonSuggestion(){
        $Call = new Call();
        $Call->setReason(Call::REASON_SUGGESTION);
        $this->assertEquals('suggestion', $Call->getReason());
    }

    /**
     * @depends testGetReasonSuggestion
     */
    public function testGetReasonDoubt(){
        $Call = new Call();
        $Call->setReason(Call::REASON_DOUBT);
        $this->assertEquals('doubt', $Call->getReason());
    }

    /**
     * @depends testGetReasonDoubt
     */
    public function testGetReasonPraise(){
        $Call = new Call();
        $Call->setReason(Call::REASON_PRAISE);
        $this->assertEquals('praise', $Call->getReason());
    }

    /**
     * @depends testGetReasonPraise
     */
    public function testGetDetailsIsEmpty(){
        $Call = new Call();
        $Call->setDetails('');
        $this->assertEmpty($Call->getDetails());
    }

    /**
     * @depends testGetDetailsIsEmpty
     */
    public function testGetDetails(){
        $Call = new Call();
        $Call->setDetails('Muito bom o serviço oferecido!');
        $this->assertEquals('Muito bom o serviço oferecido!', $Call->getDetails());
    }

    /**
     * @depends testGetDetails
     */
    public function testGetDetailsFalse(){
        $Call = new Call();
        $Call->setDetails('Muito bom o serviço oferecido!');
        $this->assertNotEquals('Muito bom o serviço que é oferecido por voces!', $Call->getDetails());
    }

    /**
     * @depends testGetDetailsFalse
     * @expectedException           InvalidArgumentException
     * @expectedExceptionMessage    The parameter isn't a Region instance
     */
    public function testGetRegionNotInstance(){
        $Call = new Call();
        $Call->setRegion('other');
    }


    /**
     * @depends testGetRegionNotInstance
     *
     */
    public function testGetRegionInstance(){
        $Call = new Call();
        $Region = new Region('Rio de Janeiro','RJ');
        $Call->setRegion($Region);
        $this->assertInstanceOf('Region', $Call->getRegion());
    }

}