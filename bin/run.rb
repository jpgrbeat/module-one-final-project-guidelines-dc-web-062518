
require_relative '../config/environment'
require_relative '../lib/cli_runner'
require_relative '../lib/dealership_cli'

loop_kill = ""
#above variable to store the exit phrase once its sent to kill the loop.
#dname is storing the name of the dealership after being prompted by a function_finder

dname = ask_for_dealership_name
#grabbing dealership object.
dealer = Dealership.find_by name: dname
#checking to see if the object exists, if it doesn't
#the user is prompted to create a new instance
 dealer = check_if_dealership_exists(dealer)
  # binding.pry
  if dealer != "exit"
    welcome_dealer(dealer)

    while loop_kill != "exit"
  # binding.pry
      dealer_prompt
      loop_kill = dealer.function_finder

    end
  end

 #  dealer = create_new_dealership
 # # dealer.save
 # # dealer.output_dealership_info
 # # dealer.create_new_car
 # dealer.welcome_dealer
  # dealer = Dealership.find(1)
  # dealer_prompt
  # dealer.function_finder
#find_by_stock_number
 # check_if_dealership_exists(dealer)

 puts "hi"

 # dealer_name = dealer.name
 # Dealership.find_by(name: dealer_name)
