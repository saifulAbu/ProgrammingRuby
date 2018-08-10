inst_section = {
	'cello' => 'string',
	'clarinet' => 'woodwind',
	'drum' => 'percussion',
	'oboe' => 'woodwind',
	'trumpet' => 'brass',
	'violin' => 'string'
}

p inst_section['oboe']
p inst_section['cello']
p inst_section['basson']

# example of default value
histogram = Hash.new(0)
histogram['saif'] = 1
histogram['arif'] = 2
histogram['sarna'] = 3

p histogram['sarna']
p histogram['oyshi']
