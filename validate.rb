require 'date'
module Validate
	def valid_fname
		if (@first_name.length) < 3
			puts "Sorry! The first name should contain more than 2 characters."
			return true
		end 
	end
	def valid_lname
		if (@last_name.length) < 3
		puts "Sorry! The last name should contain more than 2 characters."
		return true
		end
	end
	def valid_date
		false if Date::strptime(@dob, "%d-%m-%y") rescue true
	end
end
