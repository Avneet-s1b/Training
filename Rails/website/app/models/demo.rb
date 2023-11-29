class Demo < ApplicationRecord
    after_create -> { puts "Congratulations!" }
end
