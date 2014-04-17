#!/bin/bash

CONFIG = ~/.config/fish/config.fish

echo "Installing fish-todo."

echo "Making todo directory."

if [ ! -d /home/.todo ]; then
	mkdir -p /home/.todo;
fi;

if [! -d ~/.config/fish/config.fish]; then
	echo "function todo-a" >> $CONFIG;
	echo -e "\t touch $HOME/todo/$argv" >> $CONFIG;
	echo "end" >> $CONFIG;
	echo "function todo-r" >> $CONFIG;
	echo -e "rm $HOME/todo/$argv" >> $CONFIG;
	echo "end" >> $CONFIG;
	echo "function todo-c" >> $CONFIG;
	echo -e "\t rm $HOME/todo/*" >> $CONFIG;
	echo "end" >> $CONFIG;
	echo "function todo-v" >> $CONFIG;
	echo -e "\t ls $HOME/todo/" >> $CONFIG;
	echo "end" >> $CONFIG;
	echo "alias todo 'cd $HOME/todo/'" >> $CONFIG;
	. ~/.config/fish/config.fish
fi;



