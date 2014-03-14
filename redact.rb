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