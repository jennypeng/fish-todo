function todo-a
	touch ~/todo/$argv
end

function todo-ml
	mkdir ~/todo/$argv
end

function todo-r
	rm ~/todo/$argv
end

function todo-c
	rm ~/todo/*
end

function todo-v
	ls ~/todo/
end


alias todo "cd /home/jenny/todo/"