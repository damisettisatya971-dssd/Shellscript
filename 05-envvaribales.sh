#!/bin/bash
echo "Course name is $course" 
#Environment variable is valid only till the process is running.
#If we want to set any variable with fixed value we can defien that in .bashrc file as below
#export course="DevSecOps with AWS"
#then run source .bashrc
#if we give two values to the same env varibale, the one which is running in the session takes the precedence
#if there is no value set in the current sessiom then env varibale defined in the .bashrc will exceutes