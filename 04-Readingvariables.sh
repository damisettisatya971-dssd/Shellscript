#!/bin/bash
echo "Please enter your name:"
read  Name
echo "Hi $Name, please enter your phone number :"
read  PH_Number
echo "OTP has been sent to your $PH_Number, please enter :"
read -s OTP #-s make the input visible while user entering it
echo "Entered OTP is correct"