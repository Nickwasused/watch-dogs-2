#!/usr/bin/env python3
import shutil
import subprocess
from pathlib import Path
import os
import fnmatch

script_path = Path(__file__).parent.absolute()
source = script_path.joinpath("./original/domino")
output = script_path.joinpath("./decode")
unluac = script_path.joinpath("./unluac.jar")

try:
    shutil.copytree(source, output)
except FileExistsError:
    print("decoded output exists!")

lua_pattern = '*.lua'

# Initialize a list to store the paths of Lua files
lua_files = []

# Walk through the directory and its subdirectories
for root, _, files in os.walk(output):
    for filename in fnmatch.filter(files, lua_pattern):
        # Create the full path to the Lua file
        lua_file_path = os.path.join(root, filename)
        # Append it to the list of Lua files
        lua_files.append(lua_file_path)

# Now, you have a list of all the Lua files in the specified directory and subdirectories
# You can loop through this list and perform any desired operations on these files
for lua_file in lua_files:
    print(f"decoding {lua_file}")
    output = subprocess.check_output(f"java -jar {str(unluac)} {lua_file}", shell=True, text=True, stderr=subprocess.STDOUT)
    with open(lua_file, "w") as f:
        f.writelines(output)

