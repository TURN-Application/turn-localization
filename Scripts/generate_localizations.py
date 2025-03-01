#!/usr/bin/env python3

import yaml
import json
import os
import glob
import stat

# Paths to files
SCRIPT_DIR = os.path.dirname(os.path.realpath(__file__))
YAML_DIR = os.path.join(SCRIPT_DIR, "../Localization")
ENUM_OUTPUT = os.path.join(SCRIPT_DIR, "../iOS/Sources/RSKey.swift")

# Collect all YAML files
yaml_files = glob.glob(os.path.join(YAML_DIR, "*.yaml"))
for f in yaml_files:
    print(f" - {os.path.basename(f)}")

# Dictionary to store all data
all_tables = {}

# Read all YAML files
for yaml_file in yaml_files:
    category = os.path.splitext(os.path.basename(yaml_file))[0]
    with open(yaml_file, 'r', encoding='utf-8') as f:
        data = yaml.safe_load(f)
        all_tables[category] = data["strings"]

# Sort categories alphabetically
sorted_categories = sorted(all_tables.keys())

# Generate RSKey.swift
swift_enum_content = """//
//  RSKey.swift
//  Copyright © TURN 2024.
//  All rights reserved.
//
// WARNING: This file is auto-generated and locked for editing. Do not modify manually!
//

public enum RSKey {
"""

# Add cases for each category
for category in sorted_categories:
    swift_enum_content += f"    case {category.lower()}({category})\n"

swift_enum_content += """
    func wrappedValue() -> LocalizableKey {
        switch self {
"""

# Add switch cases alphabetically
for category in sorted_categories:
    swift_enum_content += f"        case .{category.lower()}(let wrappedValue):\n            wrappedValue\n"

swift_enum_content += "        }\n    }\n\n"

# Generate nested enums alphabetically
for category in sorted_categories:
    swift_enum_content += f"    // MARK: - {category}.xstrings\n"
    swift_enum_content += f"    public enum {category}: String, LocalizableKey {{\n"
    # Sort keys alphabetically
    sorted_keys = sorted(all_tables[category].keys())
    for key in sorted_keys:
        swift_enum_content += f"        case {key}\n"
    swift_enum_content += "    }\n\n"

swift_enum_content = swift_enum_content.rstrip() + "\n}\n"

# Create directory and write enum
os.makedirs(os.path.dirname(ENUM_OUTPUT), exist_ok=True)

# Unlock file for writing if it exists (set to 644: read/write for owner, read for others)
if os.path.exists(ENUM_OUTPUT):
    os.chmod(ENUM_OUTPUT, stat.S_IRUSR | stat.S_IWUSR | stat.S_IRGRP | stat.S_IROTH)  # 644 permissions

# Write the file
with open(ENUM_OUTPUT, 'w', encoding='utf-8') as f:
    f.write(swift_enum_content)

# Lock file to read-only (set to 444: read-only for all)
os.chmod(ENUM_OUTPUT, stat.S_IRUSR | stat.S_IRGRP | stat.S_IROTH)  # 444 permissions
print(f"Generated {ENUM_OUTPUT} and locked for editing")

# Generate separate .xcstrings files
for category in sorted_categories:
    xcstrings_data = {
        "sourceLanguage": "en",
        "version": "1.0",
        "strings": {}
    }
    # Sort keys alphabetically
    sorted_keys = sorted(all_tables[category].keys())
    for key in sorted_keys:
        xcstrings_data["strings"][key] = {
            "localizations": {
                lang: {
                    "stringUnit": {
                        "state": "translated",
                        "value": value
                    }
                } for lang, value in all_tables[category][key].items()
            }
        }
    
    category_output = os.path.join(SCRIPT_DIR, f"../iOS/Resources/{category}.xcstrings")
    os.makedirs(os.path.dirname(category_output), exist_ok=True)
    with open(category_output, 'w', encoding='utf-8') as f:
        json.dump(xcstrings_data, f, ensure_ascii=False, indent=2)
    print(f"Generated {os.path.basename(category_output)}")

print("Localization: Success")
