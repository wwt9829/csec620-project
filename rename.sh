#!/bin/bash

search_dir=.

for entry in "$search_dir"/*
do
  new_entry=$(sed 's/.\/unpacked_//g' <<< "$entry")
  mv ../$new_entry ./$new_entry
done
