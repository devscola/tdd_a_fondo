exports.config = {
  specs: [
    './specs/**/*.js'
  ],
  maxInstances: 1,
  host: 'selenium',
  port: 4444,
  baseUrl: 'http://sut',
  capabilities: [{
   browserName: 'chrome'
  }],
  reporters: ['spec']
}
