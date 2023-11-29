class Product < ApplicationRecord
    before_create do
        puts "Creating an object in Products table"
    end
    # after_initialize do |product|
    #     puts "You have initialized an object!"
    # end
end
