inst_section = {
	:cello => 'string',
	:clarinet => 'woodwind',
	:drum => 'percussion',
	:oboe => 'woodwind',
	:trumpet => 'brass',
	:violin => 'string'
}

inst_section[:cello] # => "woodwind"
inst_section["cello"] # => nil


#syntactic sugar for map where symbols are keys
inst_selection = {
	cello:		'string',
	clarinet:	'woodwind',
	drum: 		'percussion',
	oboe: 		'woodwind',
	trumpet:	'brass',
	violin:		'string'
}

inst_section[:oboe] # => oboe


