var assert = require('chai').assert
var expect = require('chai').expect

describe('Networky', function () {
  xit('has to take into account the possible delay', function () {
    browser.url('/networky.html')

    assert.isTrue(browser.isExisting('h1'), 'Title is present')

    expect($('h1').getText()).to.equal('Hello')
  })
})
