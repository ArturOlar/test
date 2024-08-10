<?php

namespace Tests\Unit\Services;

use App\Services\SomeService;
use PHPUnit\Framework\TestCase;

class SomeServiceTest extends TestCase
{
    public function testSayHello(): void
    {
        $someService = new SomeService();

        $this->assertSame('Hello World!', $someService->sayHello());
    }
}