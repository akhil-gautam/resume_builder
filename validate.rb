require 'date'
module Validate

	#a valid last name should be more than 2 chars long and should not be empty
	def valid_fname
		if ((@first_name.length) < 3) || (@first_name.split(' ').size == 0)
			puts "Sorry! The first name invalid. Try again."
			return true
		else
			return false
		end 
	end

	#a valid last name should be more than 2 chars long and should not be empty
	def valid_lname
		if (@last_name.length) < 3 || (@last_name.split(' ').size == 0)
			puts "Sorry! The last name is invalid. Try again."
			return true
		else
			return false
		end 
	end

	#a valid date of birth is one in the format DD-MM-YYYY and less than current date
	def valid_date
		begin
			x = Date::strptime(@dob, "%d-%m-%Y")
		rescue
			puts "Sorry! You have entered date in an invalid format."
			return true
		end
		if (x >= Date.today)
			puts "Sorry! You age is invalid. Try again."
			return true
		else
			return false
		end
	end

	#a valid experience duration should not exceed the age
	def valid_experience
		if ((Date.today.year - Date::strptime(@dob, "%d-%m-%Y").year)) < @work_experience.to_i
			puts "Sorry! Work experience can't exceed your age. Try again."
			return true
		else
			return false
		end
	end

	#check if the number of words is more than 10
	def valid_description
		if @work_description.split(' ').size > 10
			puts "Sorry! Try to describe in 10 words only."
			return true
		else 
			return false
		end
	end

	#email verification needs to have RegExr matching
	def valid_email					
		if @email_id.size < 5
			puts "Sorry! Invalid E-Mail ID. Try again."
			return true
		else
			return false
		end
	end
end
