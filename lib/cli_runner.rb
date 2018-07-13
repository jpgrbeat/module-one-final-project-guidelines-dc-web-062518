# require_relative "../models/cars"

def welcome
  puts "Hello!"
  puts ""
  puts "Welcome to the makeshift inventory tool!"
end

# def prompt
#   puts ""
#   puts "What would you like to do?"
#   puts "1. add a vehicle"
#   puts "2. delete a car from inventory"
#   puts "3. update a vehicle's price"
#   puts "4. print inventory"
#   puts "5. exit"
#   puts ""
# end

def function_finder
  input = gets.chomp
  case input
  when '1'
    add_vehicle
  when '2'
    delete_car
  when '3'
    update_price
  when '4'
    print_inventory
  when '5'
    exit_message
  else
    puts "Improper input."
  end
end

def save_prompt(vehicle)
  puts "Would you like to save the vehicle?"
  input = gets.chomp
  case input.downcase
  when 'y'
    vehicle.save
  else
    puts "Not saved"
  end
end

def find_by_stock_number
  puts "Enter Stock Number"
  input = gets.chomp

  vehicle = Car.find_by(stock_number: input)
  # print_vehicle(vehicle)
  # binding.pry
  if vehicle != nil
    return vehicle
  else
    puts "Does not exist"
    find_by_stock_number
  end
end

def add_vehicle
  puts "Let's add a vehicle!"
  puts " "
  vehicle = Car.new
  puts "What's the stock number?"
  vehicle.stock_number = gets.chomp
  puts ""
  puts "What year is the vehicle?"
  vehicle.year = gets.chomp
  puts ""
  puts "What make is the vehicle?"
  vehicle.make = gets.chomp
  puts ""
  puts "What model of vehicle is it?"
  vehicle.model = gets.chomp
  puts ""
  puts "What would you like to list it for?"
  vehicle.price = gets.chomp.to_f
  puts ""
  puts "How much did the vehicle cost?"
  vehicle.cost  = gets.chomp.to_f
  puts ""
  puts ""
  print_vehicle(vehicle)
  puts "Vehicle added!"
  save_prompt(vehicle)
end

def print_vehicle(car)
  puts "Stock Number: #{car.stock_number}"
  puts "Vehicle Year: #{car.year}"
  puts "Vehicle Make: #{car.make}"
  puts "Vehicle Model: #{car.model}"
end

# def update_price
#   puts "Which vehicle would you like to update the price on?"
#   vehicle = find_by_stock_number
#
#   puts "#{vehicle.price} is the current price,"
#   puts "what would you like to change it to?"
#   puts ""
#
#   vehicle.price = gets.chomp
#   save_prompt(vehicle)
#
#   print_vehicle(vehicle)
#   puts "Vehicle Price: #{vehicle.price}"
#
# end

def delete_car
  vehicle = find_by_stock_number

  puts " Are you sure you want to delete this vehicle?"
  input = gets.chomp.downcase
  case input.downcase
  when "yes"
    vehicle.destroy
  else
    puts "Aborted"
  end
end

def print_inventory
  puts "Printing inventory..."

  Car.all.each do |car|
    puts "#{print_vehicle(car)}"
  end
end
