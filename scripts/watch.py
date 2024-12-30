import os
import subprocess
import time

from watchdog.events import FileSystemEventHandler
from watchdog.observers import Observer


class CodeHandler(FileSystemEventHandler):
    def __init__(self):
        self.last_modified = {}
        self.delay = 15  # seconds

    def on_modified(self, event):
        if event.src_path.endswith((".py", ".js")):
            current_time = time.time()
            last_modified = self.last_modified.get(event.src_path, 0)

            if current_time - last_modified > self.delay:
                self.last_modified[event.src_path] = current_time
                self.run_checks(event.src_path)

    def run_checks(self, file_path):
        if file_path.endswith(".py"):
            print(f"Processing Python file: {file_path}")
            subprocess.run(["black", file_path])
            subprocess.run(["pylint", file_path])
            subprocess.run(["pyright", file_path])
        elif file_path.endswith(".js"):
            print(f"Processing JavaScript file: {file_path}")
            subprocess.run(["npm", "run", "format"])
            subprocess.run(["npm", "run", "lint:fix"])


if __name__ == "__main__":
    event_handler = CodeHandler()
    observer = Observer()
    observer.schedule(event_handler, path="src", recursive=True)
    observer.start()

    try:
        while True:
            time.sleep(1)
    except KeyboardInterrupt:
        observer.stop()
    observer.join()
