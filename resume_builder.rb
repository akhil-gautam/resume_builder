require "./validate.rb"
class Resume_builder
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
	def input_first_name
		puts "Enter first name(should be more than 2 characters):"
		@first_name = gets.chomp
	end
	def input_last_name
		puts "Enter second name(should be more than 2 characters):"
		@last_name = gets.chomp
	end
	def date_of_birth
		puts "Enter your date of birth (e.g. DD-MM-YYYY): "
		@dob = gets.chomp
	end
	def work_exp
		puts "Enter your work experience in years:"
		@work_experience = gets.chomp
	end
	def work_descrip
		puts "Enter your work description in not more than 10 words:"
		@work_description = gets.chomp
	end
	def email
		puts "Enter your Email ID(e.g abc@xyz.com):"
		@email_id = gets.chomp
	end
	person = Resume_builder.new()

	begin
		person.input_first_name
	end while person.valid_fname

	begin
		person.input_last_name
	end while person.valid_lname

	begin
		person.date_of_birth
	end while person.valid_date

	begin
		person.work_exp
	end while person.valid_experience

	begin
		person.work_descrip
	end while person.valid_description

	begin
		person.email
	end while person.valid_email

	person.save_as_file
	puts "You resume is ready for download!"
end
