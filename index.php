<?php

use App\Services\SomeService;

require_once './vendor/autoload.php';

$someService = new SomeService();

echo $someService->sayHello();