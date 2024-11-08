# This test verifies the assumptions from the example execution.

script_directory="$(dirname "$0")"

if ! "$script_directory/../01_simple_example.sh"; then
  echo "Example should pass but fails."
  exit 1
fi

if "$script_directory/../02_failing_example.sh"; then
  echo "Example should fail but passes."
  exit 1
fi

if ! "$script_directory/../03_example_with_specific_expectation.sh"; then
  echo "Example should pass but fails."
  exit 1
fi

if "$script_directory/../04_nested_example.sh"; then
  echo "Example should fail but passes."
  exit 1
fi

echo "All tests passed."
