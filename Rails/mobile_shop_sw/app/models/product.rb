class Product < ApplicationRecord

    # after_create :creation

    # after_validation :creation

    # # before_create do
    # #     puts "Creating an object in Products table"
    # # end
    # after_initialize ->(user){puts "You have initialized a product object!"}
    # # after_initialize do |user|
    # #     puts "You have initialized a product object!"
    # # end

    # private
    #     def creation
    #         puts "Product added successfully"            
    #     end

    attr_accessor :name

    before_validation :remove_whitespaces

    private
        def remove_whitespaces
            name.strip!
        end
end
