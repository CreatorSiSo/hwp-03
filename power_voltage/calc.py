import os
import subprocess
from pathlib import Path

path = input("Path of file: ")
content = Path(path).read_text()

with open(path, "w") as file:
    for line in content.splitlines():
        if line.startswith("#"):
            file.write(line + "\n")
            continue
        parts = line.split(",")
        output = subprocess.check_output(['rink', f"{parts[0].strip()}V * {parts[1].strip()}mA to mW"]).decode("utf-8")
        file.write(f"{parts[0]}, {parts[1]}, {output.splitlines()[1].split(' ')[0]}\n")