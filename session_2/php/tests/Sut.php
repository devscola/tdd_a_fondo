<?php

class Sut
{
  public function __construct($collaborator)
  {
    $collaborator->registerClient($this);

    $this->collaborator = $collaborator;
  }

  public function collaboratorNotNeededMethod()
  {
    return 'OK';
  }

  public function collaboratorNeededMethod()
  {
    return $this->collaborator->doSomethingImportant();
  }
}

class Collaborator
{
  public function doSomethingImportant()
  {
    $this->expensiveMethod();
    return 'OK';
  }

  private function expensiveMethod()
  {
     throw new \Exception('Very expensive!!!!');
  }
}
