#!/bin/bash

current_datetime=$(date +"%d-%m-%Y_Jam-%H-%M-%S")

dir_name="dir_$current_datetime"

/usr/local/hadoop/bin/hadoop fs -mkdir "/tmp/$dir_name"
