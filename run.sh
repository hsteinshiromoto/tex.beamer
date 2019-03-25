#!/bin/bash

if [[ $1 == "clean" ]]; then
		echo "Cleaning folder"
		find src/ | grep -Ev '\.(tex|pdf)$' | xargs rm
fi