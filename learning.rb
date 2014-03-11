class Words
	def wordSort
		word = []
		entry = true
		while entry != ""
			puts "Please enter a word"
			entry = gets.chomp
			word << entry unless entry == "" 
		end
		p word.sort.join(', ')
	end

	def survey
		question = [ "Do you like eating tacos?", "Do you like eating sopapillas?", "Do you like eating burritos?", "Do you like eating chimichangas?", "Do you wet the bed?" ]
		count = 0
		question.each do | quest |
			check = false
			while !check
				puts
				puts quest
				puts "Please answer \"yes\" or \"no\"" 
				case answer = gets.chomp.downcase
				when "yes", "no"
					check = true
					count += 1 unless answer == "no"
				end
			end
		end
		puts "You answered yes to #{count} questions"
		puts "You answered no to #{question.length - count} questions"
	end

	def sayMoo numberOfMoos
	  puts 'mooooooo...'*numberOfMoos
	  'yellow submarine'
	  puts numberOfMoos + 3  unless numberOfMoos == 3
	  puts "Joe Mama" if numberOfMoos == 3
	end

end

survey1 = Words.new
x = survey1.sayMoo(3)
puts x



