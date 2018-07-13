class Dealership < ActiveRecord::Base
  has_many :cars
  has_many :customers, through: :cars
  # puts "1. Update dealship info"
  # puts "2. Add a car to inventory"
  # puts "3. Remove a car from inventory"
  # puts "4. Update vehicle information"
  # puts "5. Exit"
  def function_finder
    input = gets.chomp

    case input
    when '1'
      self.update_dealer_info
    when '2'
      self.create_new_car
    when '3'
      delete_car
    when '4'
       update_price
    when '5'
      dealer_cars_output
      self.reload
    when '6'
      c = find_by_stock_number
      c.create_new_customer
    when '7'
      puts "Enter customer name"
      input = gets.chomp
      c = Customer.find_by(name: input)
      puts "#{c.name} deleted!"
      c.destroy
    when '8'
      c = find_by_stock_number
      c.email_blast
      self.email_message
    when '9'
      self.mass_marketing
      self.email_message
    when '10'
      self.exit_message
    else
      puts "invalid input"
    end
  end

  # def welcome_dealer
  #   puts "Welcome #{self.name}!"
  #   puts ""
  #   puts "This is your personalized inventory system."
  # end

  def get_customer_email
    puts "Enter customer name..."
    input = gets.chomp
    c = Customer.find_by(name: input)
    if c != nil
      return c.email
    else
      puts "Customer does not exist!"
    end

  end

  def mass_marketing
    arr = self.cars.map{|car| car.email_blast}
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

    print_vehicle(vehicle)
    puts "Vehicle added!"
    # save_prompt(vehicle)
  end

  def update_dealer_info
    puts ""
    output_dealership_info
    puts ""
    puts "What would you like to update?"
    puts "1. Name"
    puts "2. Location"
    puts "3. Phone Number"
    puts "4. Website url"
    puts "5. Cancel"
    puts ""



    sym = name
    case gets.chomp
    when '1'
      puts " What would you like to update the name to?"
      input = gets.chomp
      self.update(name: input)
    when '2'
      puts 'What is the new location?'
      input = gets.chomp
      self.update(location: input)
    when '3'
      puts "What would you like to change the phone number to?"
      input = gets.chomp
      self.update(phone: input)
    when '4'
      puts "What's the new url?"
      input = gets.chomp
      self.update(website: input)
    when '5'
      return ""
    else
      puts "Not valid input."
      puts ""
      update_dealer_info
    end
    output_dealership_info
  end

  def delete_dealer
    puts "Are you sure you want to delete this dealership from the system?"
    #yes/no reader
    self.destroy
    puts "Dealership destroyed!"
  end

  def dealer_cars_output
    # binding.pry
    self.cars.each do |car|
      puts ""
      puts "Stock number :#{car.stock_number}"
      puts "Year : #{car.year}"
      puts "Make :#{car.make}"
      puts "Model :#{car.model}"
      puts ""
    end
  end

  def update_price
    puts "Which vehicle would you like to update the price on?"
    vehicle = find_by_stock_number
    if vehicle.dealership_id != self.id
      puts "This vehicle does not exist in your inventory"
      update_price
    else
      puts "#{vehicle.price} is the current price,"
      puts "what would you like to change it to?"
      puts ""

      vehicle.price = gets.chomp
      save_prompt(vehicle)

      print_vehicle(vehicle)
      puts "Vehicle Price: #{vehicle.price}"
    end
  end

  def email_message
    email = []
    puts "Type send to send email"
    input = ""
    while input != "send"
      input = gets.chomp
      if input != "send"
        email << input
      end
    end
  end


  def exit_message
    puts "Goodbye"
    # binding.pry
    return "exit"

  end

end
