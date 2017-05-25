class Resume_builder
	attr_accessor :name
	def input
		puts "Enter your name:"
		@name = gets.chomp
	end
	def save_as_file
		f = File.open("#{@name}.txt", "w+")
		f.puts "#{@name}"
	end
end
person = Resume_builder.new()
person.input
person.save_as_file
puts "You resume is ready for download!"