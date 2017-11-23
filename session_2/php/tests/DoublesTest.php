<?php
use PHPUnit\Framework\TestCase;

include 'Doubles.php';
include 'Sut.php';

class DoublesTest extends TestCase
{
  /** @test */
  public function test_dummy_does_not_do_anything()
  {
    $sut = new Sut(new Dummy());

    $this->assertEquals('OK', $sut->collaboratorNotNeededMethod());
  }

  public function test_stub_returns_a_canned_answer_to_calls()
  {
    $sut = new Sut(new Stub());

    $this->assertEquals('OK', $sut->collaboratorNeededMethod());
  }

  public function test_mock_verifies_calls_made()
  {
    $mock = new Mock();
    $sut = new Sut($mock);

    $sut->collaboratorNeededMethod();

    $this->assertTrue($mock->verify('doSomethingImportant'));
  }
}
