
require_relative '../config/environment'
require_relative '../lib/cli_runner'
require_relative '../lib/dealership_cli'

word_up = ""
welcome
# while word_up != "exit"
#   prompt
#   word_up = function_finder
# end

 dealer = create_new_dealership
 dealer.save
 dealer.output_dealership_info
 dealer.create_new_car
 binding.pry
 puts "hi"

 # dealer_name = dealer.name
 # Dealership.find_by(name: dealer_name)
