# This test executes all tests and verifies overall repository status.

script_directory="$(dirname "$0")"

if ! "$script_directory/../example/test/test.sh"; then
  echo "Example tests should pass but fail."
  exit 1
fi

if ! "$script_directory/../example/commands/test/test.sh"; then
  echo "Commands tests should pass but fail."
  exit 1
fi

echo "All tests passed."
