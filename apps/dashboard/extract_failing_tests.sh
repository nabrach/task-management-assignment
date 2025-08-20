#!/bin/bash

# Extract failing test names from the test output
grep "FAILED\[39m$" test_output.log | \
grep -o "Chrome Headless 138.0.0.0 (Linux x86_64) [^F]*FAILED" | \
sed 's/Chrome Headless 138.0.0.0 (Linux x86_64) //' | \
sed 's/ FAILED$//' | \
sort | \
uniq