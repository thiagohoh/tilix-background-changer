#!/bin/sh
                                                                                                                       
imagePath="$HOME/Pictures"
                                                                                                                      
pics=("$imagePath"/*)
                                                                                                                        
key="/com/gexperts/Tilix/background-image"
                                                                                                                      
selected=$(dconf read $key)
                                                                                                                       
rand=$((0 + $RANDOM % ${#pics[@]}))
nfile="${pics[$rand]}"
                                                                                                                      
dconf write $key "'$nfile'"
                                                                                                                        
echo "new: '$nfile'"
