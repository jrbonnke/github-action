const { sayHello } = require('./index');

test('greets user correctly', () => {
  expect(sayHello('DevOps')).toBe('Hello, DevOps!');
});

