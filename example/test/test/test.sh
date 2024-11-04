# A smoke test that verifies the execution of test scripts.

script_directory="$(dirname "$0")"

if ! "$script_directory/../passing_test.sh"; then
  echo "Test should pass but fails."
  exit 1
fi

if "$script_directory/../failing_test.sh"; then
  echo "Test should fail but passes."
  exit 1
fi
