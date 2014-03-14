

def movie_databse
	movies = {
	Primer: 2,
	Alien: 4,
	Terminator: 5,
	Predator: 4,
	Dune:1
}
	
	puts ""
	puts "***************************************"
	puts "What would you like to do?"
	puts "Type 'add' to add a movie."
	puts "Type 'update' to update a movie."
	puts "Type 'display' to display all movies."
	puts "Type 'delete' to delete all movies."
	puts "***************************************"
	choice = gets.chomp.downcase

	case choice
	when "add"
		puts "Please enter the name of the movie you wish to add"
		entry = gets.chomp.downcase.capitalize!
		if movies[entry.to_sym].nil?
			puts "Rate #{entry} on a scale of 1 to 5."
			rating = gets.chomp
			movies[entry.to_sym] = rating.to_f
			puts "#{entry} has been added to the database!"
		else
			puts "Your movie has already been added. Would you like to rate it?"
			puts "Enter 'yes' or 'no'"
			answer = gets.chomp.downcase
			case answer
			when "yes"
				puts "How would you rate #{entry} from 1 to 5?"
				rating = gets.chomp
				movies[entry.intern] = (movies[entry.intern] + rating.to_f) / 2.0
				puts "The movie #{entry} is now rated #{movies[entry.intern]}/5"
			when "no"
				puts "It's ok. No need to rate anything! Enjoy the show!"
			else
				puts "Please type in yes or no. Thanks."
			end
		end
	when "update"
		puts "Please enter the name of the movie you would like to update"
		update_movie = gets.chomp.downcase.capitalize
		if movies[update_movie.to_sym].nil?
			puts "Movie not found"
		else
			puts "What's the new rating(1 to 5) for #{update_movie}?"
			new_rating = gets.chomp
			movies[update_movie.to_sym] = (movies[update_movie.to_sym] + new_rating.to_f) / 2			
			puts "#{update_movie} is now rated #{movies[update_movie.to_sym]}/5"
		end	
	when "display"
		movies.each { |movie, rating| puts "#{movie}: #{rating}/5" }
	when "delete"
		puts "Which movie would you like to delete?"
		entry = gets.chomp.downcase.capitalize
		if movies[entry.to_sym].nil?
			"Movie not Found"
		else
			movies.delete(entry.to_sym)!
			puts "#{entry} has been deleted from the movie database!"
		end

	else
		puts "I did not understand your entry"
	end
end


movie_databse



