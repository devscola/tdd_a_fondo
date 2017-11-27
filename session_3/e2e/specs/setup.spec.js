var expect = require('chai').expect

describe('The setup', function () {
  it('working', function () {
    browser.url('/')

    expect($('h1').getText()).to.equal('Tips')
  })
})
