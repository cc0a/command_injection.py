#!/bin/bash

# Loop to continually take input
while true; do
    # Prompt for the command to run
    echo -n "Enter command to execute (type 'exit' to quit): "
    read user_input

    # If the user types 'exit', break the loop
    if [ "$user_input" == "exit" ]; then
        echo "Exiting..."
        break
    fi

    # Prepare the full curl command
    command="curl -I http://localhost:1337/?method=foo;$user_input"

    # Display the command being run (optional)
    echo "Running command: $command"

    # Run the command using eval
    eval $command
done