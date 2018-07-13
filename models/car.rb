require 'pry'
class Car < ActiveRecord::Base
  belongs_to :dealership
  has_many :customers

  def create_new_customer
    c = Customer.new
    puts "What's the customer's name?"
    c.name = gets.chomp
    puts ""
    puts "What's the #{c.name}'s email address?"
    c.email = gets.chomp
    puts ""
    puts "What's #{c.name}'s phone number?"
    c.cell = gets.chomp
    puts ""
    puts ""
    c.car_id = self.id
    c.save
    puts "Customer created!"
  end

  def email_blast
    e = self.customers.map{|cust| cust.email}
    puts e.join(", ")
  end
end
