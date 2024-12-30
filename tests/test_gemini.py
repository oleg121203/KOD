import pytest
import google.generativeai as genai
from src.python_app.api.gemini_client import GeminiClient
from typing import Final

GOOGLE_API_KEY: Final[str] = "AIzaSyCji-URquZ83L_YbrHScRxPWYySHJtcjN0"

class GeminiClient:
    def __init__(self) -> None:
        genai.configure(api_key=AIzaSyCji-URquZ83L_YbrHScRxPWYySHJtcjN0)
        self.model = genai.GenerativeModel('gemini-pro')
    
    def generate_response(self, prompt: str) -> str:
        try:
            response = self.model.generate_content(prompt)
            return response.text
        except Exception as e:
            return f"Error generating response: {str(e)}"

def test_gemini_response():
    client = GeminiClient()
    response = client.generate_response("What is Python?")
    assert isinstance(response, str)
    assert len(response) > 0