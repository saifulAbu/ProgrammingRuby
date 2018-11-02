# break - exits current block, runs next statement after current block
# redo - begins execution without reevaluating loop condition
# next - starts a new iteration of loop

while line = gets
	next if line =~ /~\s#/
	break if line =~ /^END/
	redo if line.gsub!(/`(,*?)`/) {eval ($1)}

	#process line
end

i = 0
loop do
	i += 1
	next if i < 3
	print i
	break if i > 4
end

# break can return a value
result = while line = gets
					 break(line) if line =~ /answer/
				 end
process_answer(result) if result


