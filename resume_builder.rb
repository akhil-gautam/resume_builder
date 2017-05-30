require "./validate.rb"
class ResumeBuilder
	include Validate

	attr_accessor :first_name, :last_name, :dob, :work_experience, :work_description, :email_id
	
	def save_as_file
		f = File.open("#{@first_name}.txt", "w+")
		f.puts "First Name: #{@first_name}"
		f.puts "Last Name: #{@last_name}"
		f.puts "Date of birth: #{@dob}"
		f.puts "Work Experience: #{work_experience}"
		f.puts "Work Description: #{work_description}"
		f.puts "E-mail id: #{email_id}"
	end

	def self.start
		person = ResumeBuilder.new()
		person.input_function_calls
		person.save_as_file
		puts "You resume is ready for download!"
	end

	def input_function_calls
		begin
			puts "Enter first name(should be more than 2 characters):"
			@first_name = gets.chomp
		end while self.valid_fname

		begin
			puts "Enter second name(should be more than 2 characters):"
			@last_name = gets.chomp
		end while self.valid_lname

		begin
			puts "Enter your date of birth (e.g. DD-MM-YYYY): "
			@dob = gets.chomp
		end while self.valid_date

		begin
			puts "Enter your work experience in years:"
			@work_experience = gets.chomp
		end while self.valid_experience

		begin
			puts "Enter your work description in not more than 10 words:"
			@work_description = gets.chomp
		end while self.valid_description

		begin
			puts "Enter your Email ID(e.g abc@xyz.com):"
			@email_id = gets.chomp
		end while self.valid_email
	end
end
ResumeBuilder.start
