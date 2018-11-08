require 'test/unit'
require_relative 'addcust'

class TestAddCustomer < Test::Unit::TestCase
	def test_add
		c = Customer.new("Ima", "Customer")
		f = File.open("tmpfile", "w") do |f|
			c.append_name_to_file(f)
			assert_equal("Ima Customer", f.gets)
		end
	ensure
		File.delete("tmpfile") if File.exists?(tmpfile)
	end
end
