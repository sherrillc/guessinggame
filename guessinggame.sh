#!/usr/bin/env bash
# File: guessinggame.sh

function get_files() {
# Calculate number of lines of regular files ~ lines that begin with a dash from ls -al

	local num_files=$(ls -al | grep ^- | wc -l)
	echo $num_files
}

# Using local variable in the function, the echo commands in the function do not print to the terminal.
# Instead all echos are concatenated together and returned at the end.  I wanted to use local variables
# in the function and command substitution in the main body of the program to learn more about that 
# method.  My Operating System is a Mac OS.  My version of bash is GNU bash, version 3.2.57(1).
# I'm simply echoing only once in the function and returning that by way of command substitution.

clear
read -p "How many files are in the current directory? (i.e. 0, 1, 2,...):" guess
actual=$(get_files)

while [[ "$guess" != "$actual" ]] 
do
	if [[ "$guess" =~  [^0-9] ]]
        then
                echo "Invalid guess"

        elif [[ "$guess" -lt "$actual" ]]
        then
                echo "Too low"

        else
                echo "Too high"
        fi

	read -p "Try another number:" guess
done

echo "Congratulations!  # of files = $actual"
