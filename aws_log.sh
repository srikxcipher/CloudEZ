#!/bin/bash

# Log file where commands and outputs will be stored
LOGFILE="aws_commands.log"

# Log the command
echo "Command: $@" >> "$LOGFILE"

# Execute the command and log the output
{
    echo "Output:"
    "$@"
    echo "-----------------------------"
} >> "$LOGFILE" 2>&1

