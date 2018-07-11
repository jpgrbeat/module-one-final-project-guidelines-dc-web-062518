# def welcome_dealer(dealer)
#   puts "Welcome #{dealer.name}!"
#   puts ""
#   puts "This is your personalized inventory system."
# end

def ask_for_dealership_name
  puts "Which dealership inventory would you like to see?"
  input = gets.chomp
end

def find_dealer_by_name(dealer_name)
   Dealership.find_by(name: dealer_name)
end

def check_if_dealership_exists(dealer)
  if dealer == nil
    puts "This dealership is not in the system."
    puts "Would you like to add it? "
    puts ""
    puts "Yes or no?"
    input = gets.chomp.downcase
  else
    output_dealership_info(dealer)
    puts "Is this correct?"
    puts ""
    puts "Yes or no?"
    input = gets.chomp.downcase
  end
  input
end



def create_new_dealership
  puts "Let's add a new dealership to the system."
  dealer = Dealership.new
  puts ""
  puts ""
  puts "What is the name of your dealership?"
  dealer.name = gets.chomp
  puts ""
  puts "Where is it located?"
  dealer.location = gets.chomp
  puts ""
  puts "What is the best phone number to reach the dealership by?"
  dealer.phone = gets.chomp
  puts ""
  puts "Last but not least, what's the url of your website?"
  dealer.website = gets.chomp

  dealer
end

# def output_dealership_info(dealer)
#   puts dealer.name
#   puts dealer.location
#   puts dealer.phone
#   puts dealer.website
# end

def dealer_prompt
  puts ""
  puts "What would you like to do today?"
  puts ""
  puts "Pick a task!"
  puts ""
  puts "1. Update dealship info"
  puts "2. Add a car to inventory"
  puts "3. Remove a car from inventory"
  puts "4. Update vehicle information"
  puts "5. Exit"
  puts ""
end
