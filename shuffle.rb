
class String
	def pass_generate
		name = self.split
		puts "Your first name is: #{name[0]}"
		puts "Your last name is: #{name[-1]}"
		password = ('a'..'z').to_a.shuffle[0..9].join
		puts "Your password is #{password}"
	end
end


puts "What is your full name?"
full_name = gets.chomp()

full_name.pass_generate
