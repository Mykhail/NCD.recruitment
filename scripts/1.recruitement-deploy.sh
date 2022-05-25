#!/usr/bin/env bash

# exit on first error after this point to avoid redeploying with successful build
set -e

echo
echo ---------------------------------------------------------
echo "Step 0: Check for environment variable with contract name"
echo ---------------------------------------------------------
echo

[ -z "$CONTRACT" ] && echo "Missing \$CONTRACT environment variable" && exit 1
[ -z "$CONTRACT" ] || echo "Found it! \$CONTRACT is set to [ $CONTRACT ]"

echo
echo ---------------------------------------------------------
echo "Step 1: Build the contract (may take a few seconds)"
echo ---------------------------------------------------------
echo

yarn build

echo
echo ---------------------------------------------------------
echo "Step 2: Deploy the contract"
echo
echo 
echo ---------------------------------------------------------
echo

near deploy $CONTRACT ./build/debug/recruitment.wasm

echo
echo
echo ---------------------------------------------------------
echo "Step 3: Prepare your environment for next steps"
echo
echo "(a) set an environment variable using target account name"
echo "    see example below (this may not work on Windows)"
echo
echo ---------------------------------------------------------
echo

exit 0
