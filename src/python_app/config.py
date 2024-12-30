"""Configuration module."""
from typing import ClassVar, Final

GOOGLE_API_KEY: Final = "AIzaSyCji-URquZ83L_YbrHScRxPWYySHJtcjN0"

class Config:
    """Application configuration."""

    DEBUG: ClassVar[bool] = False
    TESTING: ClassVar[bool] = False
    LOG_LEVEL: ClassVar[str] = "INFO"
    VERSION: ClassVar[str] = "1.4.5"
    ENVIRONMENT: ClassVar[str] = "development"

    @classmethod
    def get_log_level(cls) -> str:
        """Get current log level."""
        return cls.LOG_LEVEL
