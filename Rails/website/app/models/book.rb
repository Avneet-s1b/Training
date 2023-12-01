class Book < ApplicationRecord
    belongs_to :author
    enum :name, [:rishab,:lovansh]
end
