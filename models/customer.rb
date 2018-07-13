class Customer < ActiveRecord::Base
   belongs_to :car
   # has_many :c_emails

   def delete_customer
     self.destroy
   end 
end
