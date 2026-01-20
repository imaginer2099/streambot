'''
A module for the OpenAI ChatGPT model API, for sending API requests and receiving data.
'''

import os
from google import genai
from google.genai import types
from dotenv import load_dotenv

load_dotenv()

OPEN_AI_KEY = os.getenv("OPENAI_API_KEY")
GENAI_API_KEY = os.getenv("GENAI_API_KEY")

class LLM:
    def __init__(self):
        self.model = "gemini-2.5-flash"
        self.client = genai.Client(api_key=GENAI_API_KEY)
        
