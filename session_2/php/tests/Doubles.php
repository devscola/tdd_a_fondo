<?php

class Dummy
{
  public function registerClient($client)
  {

  }
}

class Stub
{
  public function registerClient($client)
  {

  }

  public function doSomethingImportant()
  {
    return 'OK';
  }
}

class Mock
{
  private $calls;

  public function __construct()
  {
    $this->calls = [];
  }

  public function registerClient($client)
  {

  }

  public function doSomethingImportant()
  {
    array_push($this->calls, 'doSomethingImportant');
  }

  public function verify($call)
  {
    return in_array($call, $this->calls);
  }
}
