#!/bin/bash

# source the env.sh file
source env.sh

# Write our PID file
echo $$ > $DIR/$USER-$NAME.pid

# Change to our working directory
cd $DIR

# Run this script to compile/start the cs262 data service.
javac -cp "../lib/*" edu/calvin/cs262/Student.java edu/calvin/cs262/Match.java edu/calvin/cs262/Message.java edu/calvin/cs262/Datedate.java edu/calvin/cs262/DatingResource.java
java -cp ".:../lib/*" edu.calvin.cs262.MonopolyResource
