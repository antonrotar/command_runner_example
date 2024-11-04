# This test verifies the assumptions from the example execution.

script_directory="$(dirname "$0")"

if ! "$script_directory/../01_simple_example.sh"; then
  echo "Example should pass but fails."
  exit 1
fi

echo "All tests passed."
