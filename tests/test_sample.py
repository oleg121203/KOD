import pytest
from src.python_app.calculator import Calculator
from src.python_app.api.gemini_client import GeminiClient


def test_calculator_add():
    calc = Calculator()
    assert calc.add(2, 3) == 5


def test_calculator_subtract():
    calc = Calculator()
    assert calc.subtract(5, 3) == 2


def test_gemini_response():
    client = GeminiClient()
    response = client.generate_response("What is Python?")
    assert isinstance(response, str)
    assert len(response) > 0

def test_code_analysis():
    client = GeminiClient()
    code = "def hello(): return 'world'"
    response = client.analyze_code(code)
    assert isinstance(response, str)
    assert len(response) > 0
