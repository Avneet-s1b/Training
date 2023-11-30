class Author < ApplicationRecord
    has_many :books, dependent: :destroy, -> { order "id DESC" }
end
