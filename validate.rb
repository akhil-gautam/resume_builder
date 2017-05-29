require 'date'
module Validate
	def valid_fname
		if (@first_name.length) < 3
			puts "Sorry! The first name invalid. Try again."
			return true
		else
			return false
		end 
	end

	def valid_lname
		if (@last_name.length) < 3
			puts "Sorry! The last name is invalid. Try again."
			return true
		else
			return false
		end 
	end

	def valid_date
		begin
			x = Date::strptime(@dob, "%d-%m-%Y")
		rescue
			puts "Sorry! You have entered date in an invalid format."
			return true
		end
		if (x.year >= Date.today.year)
			puts "Sorry! You age is invalid. Try again."
			return true
		else
			return false
		end
	end

	def valid_experience
		if ((Date.today.year - Date::strptime(@dob, "%d-%m-%Y").year)).to_i <= @work_experience.to_i
			puts "Sorry! Work experience can't exceed your age. Try again."
			return true
		end
	end

	def valid_description
		if @work_description.split(' ').size > 10
			puts "Sorry! Try to describe in 10 words only."
			return true
		else 
			return false
		end
	end

	def valid_email
		if @email_id.size < 5
			puts "Sorry! Invalid E-Mail ID. Try again."
			return true
		else
			return false
		end
	end
end
