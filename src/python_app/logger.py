import logging
import os
from typing import Any

from .config import Config  # Относительный импорт


def setup_logger() -> logging.Logger:
    """Initialize and configure logger."""
    logger = logging.getLogger("app")
    logger.setLevel(Config.get_log_level())

    # Создаем директорию для логов если её нет
    log_dir = "/app/logs"
    os.makedirs(log_dir, exist_ok=True)

    formatter = logging.Formatter(
        "%(asctime)s - %(name)s - %(levelname)s - %(message)s"
    )

    # Console handler
    console_handler = logging.StreamHandler()
    console_handler.setFormatter(formatter)
    logger.addHandler(console_handler)

    # File handler
    file_handler = logging.FileHandler(
        os.path.join(log_dir, f"{Config.ENVIRONMENT}.log")
    )
    file_handler.setFormatter(formatter)
    logger.addHandler(file_handler)

    return logger


logger: logging.Logger = setup_logger()
