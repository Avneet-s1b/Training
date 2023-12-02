# class OurCallbackClass
#     def before_create(record)
#         if record.name.length>2
#             puts "length is greater than 2"
#         end
#     end
# end

class Product < ApplicationRecord

    has_many :orders
    has_many :customers, through: :orders

    # scope :price_more_than, ->(amount){where("price > ?", amount)}

    default_scope {where("price > ?", 40000)}

    # after_create :creation

    # after_validation :creation

    # before_create do
    #     puts "Creating an object in Products table"
    # end

    # before_create :fn , if: Proc.new { name.length==6 }
    # def fn 
    #     puts "word is of length #{name}"
    # end

    # before_create OurCallbackClass.new

    # after_create_commit Proc.new{puts "after_create_commit callback working"}

    # after_commit { puts("this actually gets called second") }
    # after_commit { puts("this actually gets called first") }

    # after_initialize ->(user){puts "You have initialized a product object!"}
    # # after_initialize do |user|
    # #     puts "You have initialized a product object!"
    # # end

    # private
    #     def creation
    #         puts "Product added successfully"            
    #     end

    # attr_accessor :name

    # before_destroy do |product|
    #     puts "destroyed #{name}"
    # end

    # before_validation :remove_whitespaces

    # throw(:abort)

    # before_validation do
    #     puts "Checking validity"
    # end

    # private
    #     def remove_whitespaces
    #         name.strip!
    #     end
end
