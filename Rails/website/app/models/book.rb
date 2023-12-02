class Book < ApplicationRecord
    belongs_to :author
    scope :no_genre, -> { where(genre:nil) }
end
