from src.python_app.calculator import Calculator


def test_calculator_add():
    calc = Calculator()
    assert calc.add(2, 3) == 5


def test_calculator_subtract():
    calc = Calculator()
    assert calc.subtract(5, 3) == 2
