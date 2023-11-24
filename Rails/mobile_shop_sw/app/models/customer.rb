class Customer < ApplicationRecord
    # validates :name, presence: true , length: { is: 6 }
    # validates :end, comparison: { greater_than: :start }
    #  validates :name, inclusion: { in: ['Action', 'Science Fiction', 'Drama', 'Horror', 'Comedy', 'Musical'] }
    validates :end, numericality: {only_integer:true}
end
