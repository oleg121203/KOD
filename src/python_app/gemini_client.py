import google.generativeai as genai
from typing import Final

GOOGLE_API_KEY: Final[str] = "AIzaSyCji-URquZ83L_YbrHScRxPWYySHJtcjN0"

class GeminiClient:
    def __init__(self) -> None:
        genai.configure(api_key=GOOGLE_API_KEY)
        self.model = genai.GenerativeModel('gemini-pro')
    
    def generate_response(self, prompt: str) -> str:
        try:
            response = self.model.generate_content(prompt)
            return response.text
        except Exception as e:
            return f"Error generating response: {str(e)}"

# Тестирование класса
client = GeminiClient()
response = client.generate_response("What is Python?")
print(response)