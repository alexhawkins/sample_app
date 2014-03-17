class Computer
    @@users = {}
    def initialize(username, password)
        @username = username
        @password = password
        @files = {}
        @@users[username] = password
    end
    
    def create(filename)
        time = Time.now
        @files[filename] = time
        puts "A new file, #{filename} was created at #{time} by #{@username}"
    end
    
    def self.get_users
        @@users
    end
    
    def self.delete_user
        puts "Name user you wish to delete"
        entry = gets.chomp.to_sym
        if @@users[entry].nil?
            puts "No user with that name!"
        else
            @@users.delete(entry)
            puts "#{@@users[entry]} deleted"
        end
    end
end
class Apple < Computer; end

my_computer = Computer.new( "achawkins".intern, "gata9ai")
my_computer = Computer.new( "bcooper".intern, "gata9ai")


Apple.delete_user

module MyLibrary
FAVE_BOOK = "Sexus by Miller"
end

puts MyLibrary::FAVE_BOOK
