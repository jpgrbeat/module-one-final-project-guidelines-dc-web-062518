class Dealership < ActiveRecord::Base
  has_many :cars
  # has_many :customers, through: :cars

  def welcome_dealer
    puts "Welcome #{self.name}!"
    puts ""
    puts "This is your personalized inventory system."
  end

  def output_dealership_info
    puts "Dealership name: #{self.name}"
    puts "Dealership location: #{self.location}"
    puts "Phone number: #{self.phone}"
    puts "URL : #{self.website}"
  end


  def create_new_car
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
    vehicle.dealership_id = self.id
    vehicle.save

    # print_vehicle(vehicle)
    # puts "Vehicle added!"
    # save_prompt(vehicle)
  end


end
