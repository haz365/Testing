#!/bin/bash

# ─── Get input from user ───────────────────────────────────
echo "Enter first number: "
read NUM1

echo "Enter second number: "
read NUM2

# ─── Perform calculations ──────────────────────────────────
ADD=$((NUM1 + NUM2))
SUB=$((NUM1 - NUM2))
MUL=$((NUM1 * NUM2))

# ─── Display results ───────────────────────────────────────
echo ""
echo "Results:"clear
echo "$NUM1 + $NUM2 = $ADD"
echo "$NUM1 - $NUM2 = $SUB"
echo "$NUM1 × $NUM2 = $MUL"

# ─── Handle division by zero ───────────────────────────────
if [ $NUM2 -eq 0 ]; then
  echo "$NUM1 ÷ $NUM2 = Error: Cannot divide by zero"
else
  DIV=$((NUM1 / NUM2))
  echo "$NUM1 ÷ $NUM2 = $DIV"
fi
