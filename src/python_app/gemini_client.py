import google.generativeai as genai
from .config import GOOGLE_API_KEY

class GeminiClient:
    def __init__(self):
        genai.configure(api_key=GOOGLE_API_KEY)
        self.model = genai.GenerativeModel('gemini-pro')
    
    def generate_response(self, prompt: str) -> str:
        response = self.model.generate_content(prompt)
        return response.text