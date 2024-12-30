from prometheus_client import Counter

from .logger import logger  # Относительный импорт

CALC_OPERATIONS = Counter(
    "calculator_operations_total", "Number of calculations performed", ["operation"]
)


class Calculator:
    def add(self, a: float, b: float) -> float:
        CALC_OPERATIONS.labels("add").inc()
        logger.info(f"Adding numbers: {a} + {b}")
        return a + b

    def subtract(self, a: float, b: float) -> float:
        CALC_OPERATIONS.labels("subtract").inc()
        logger.info(f"Subtracting numbers: {a} - {b}")
        return a - b
