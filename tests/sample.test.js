const Calculator = require("../src/js_app/calculator");

describe("Calculator", () => {
  const calc = new Calculator();

  test("adds numbers correctly", () => {
    expect(calc.add(2, 3)).toBe(5);
  });

  test("subtracts numbers correctly", () => {
    expect(calc.subtract(5, 3)).toBe(2);
  });
});
