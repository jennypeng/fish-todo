#!/bin/bash

CONFIG = ~/.config/fish/config.fish

echo "Installing fish-todo."

echo "Making todo directory."

if [ ! -d /home/.todo ]; then
	mkdir -p /home/.todo;
fi;

if [! -d ~/.config/fish/config.fish]; then
	echo "function todo-a" >> $CONFIG;
	echo -e "\t touch /home/jenny/todo/$argv" >> $CONFIG;
	echo "end" >> $CONFIG;
	echo "function todo-r" >> $CONFIG;
	echo -e "rm /home/jenny/todo/$argv" >> $CONFIG;
	echo "end" >> $CONFIG;
	echo "function todo-c" >> $CONFIG;
	echo -e "\t rm /home/jenny/todo/*" >> $CONFIG;
	echo "end" >> $CONFIG;
	echo "function todo-v" >> $CONFIG;
	echo -e "\t ls /home/jenny/todo/" >> $CONFIG;
	echo "end" >> $CONFIG;
	echo "alias todo 'cd /home/jenny/todo/'" >> $CONFIG;
	. ~/.config/fish/config.fish
fi;



