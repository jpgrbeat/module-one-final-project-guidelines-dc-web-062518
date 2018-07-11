require 'pry'
class Car < ActiveRecord::Base
  belongs_to :dealership
  # has_many :customers 
end
