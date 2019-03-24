require_relative 'finder'
require_relative 'options'

module Anagram
	class Runner
		def initialize(argv)
			@options = Options.new(argv)
		end

		# flesh out
		def run
		end

	end
end
