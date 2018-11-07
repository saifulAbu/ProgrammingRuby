def prompt_and_get(prompt)
	print prompt
	res = readline.chomp
	throw :quite_requested if res == "!"
	res
end

catch :quite_requested do
	name = prompt_and_get("Name: ")
	age = prompt_and_get("Age: ")
	sex = prompt_and_get("Sex: ")
	# ..
	# process information
end
