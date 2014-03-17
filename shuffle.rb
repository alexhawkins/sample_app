
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


print "What's your first name?"
first_name = gets.chomp.capitalize

print "What's your last name?"
last_name = gets.chomp.capitalize

print "What city were you born in?"
#city = gets.chomp.split.map(&:captilize)join(" ")
city = gets.chomp.split.each{ |i| i.capitalize}.join(" ")

puts "What state or province were you born in?"
state = gets.chomp.upcase

puts "Your name is #{first_name} #{last_name}. You were born in #{city}, #{state}."


