class Product < ApplicationRecord

    after_create :creation

    before_create do
        puts "Creating an object in Products table"
    end
    after_initialize do |user|
        puts "You have initialized a product object!"
    end

    private
        def creation
            puts "Product added successfully"            
        end
end
