class Author < ApplicationRecord
    has_many :books, before_add: :check_credit_limit

    def check_credit_limit(book)
        puts "Adds a booooooooook!"
    end


end
