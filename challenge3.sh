#!/bin/bash

# ─── Prompt user for filename ─────────────────────────────
echo "Enter filename to check: "
read FILENAME

# ─── Check if file exists ─────────────────────────────────
if [ ! -f "$FILENAME" ]; then
  echo "File '$FILENAME' does not exist."
  exit 1
fi

echo "File '$FILENAME' exists."
echo ""

# ─── Check readable ───────────────────────────────────────
if [ -r "$FILENAME" ]; then
  echo "✓ File is readable"
else
  echo "✗ File is not readable"
fi

# ─── Check writable ───────────────────────────────────────
if [ -w "$FILENAME" ]; then
  echo "✓ File is writable"
else
  echo "✗ File is not writable"
fi

# ─── Check executable ─────────────────────────────────────
if [ -x "$FILENAME" ]; then
  echo "✓ File is executable"
else
  echo "✗ File is not executable"
fi