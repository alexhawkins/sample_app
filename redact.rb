puts "Please enter your string of text"
text = gets.chomp.split(" ")
puts "Which words would you like to redact from the string?"
redact = gets.chomp.split(" ")

counter = 0
text.each do | word |
    redact.each do | redacted |
       text[counter] = "****" if redacted.downcase == word.downcase
    end
    counter += 1
end

redacted_text = text.join(" ")

puts redacted_text



#Basic word counter. Counts the number of words used upon entry into text.

puts "Enter some text"
text = gets.chomp.split(" ")

frequency = Hash.new(0)

text.each { |word| frequency[word] += 1} 
frequency = frequency.sort_by {|key,val| val}
frequency.reverse!

frequency.each {|key,val| puts "#{key}: #{val}"}

#Check for a prime number

def prime(n)
    is_prime = true
    #check if prime
    #since prime is divisible by itself and 1, check range from 2 to n-1.
    for i in 2..(n-1)
        if n % i == 0
            is_prime = false
        end
    end
    
    if is_prime
        puts "You entered a prime number!" 
    else
        puts "You did not enter a prime!"
    end 
end
 
entry = nil
while entry.to_s.downcase != "exit"
 puts "Enter a number to check if prime: "
    entry = gets.chomp.to_i
    prime(entry)
end

    