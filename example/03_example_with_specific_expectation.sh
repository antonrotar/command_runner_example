# This example adds and runs two passing commands.
# The overall return value will be positive.

script_directory="$(dirname "$0")"
source "$script_directory/../command_runner/command_runner.sh"

command_runner_add_specific ./$script_directory/commands/failing_command.sh 1

command_runner_run