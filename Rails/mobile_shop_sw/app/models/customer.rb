class Customer < ApplicationRecord
    # validates :name, presence: {strict:true} , length: { is: 6 }
    # validates :end, comparison: { greater_than: :start }
    validates :name, inclusion: { in: ['Action', 'Science Fiction', 'Drama', 'Horror', 'Comedy', 'Musical'] }, allow_nil: true
    # validates :end, numericality: {only_integer:true, strict:true}
end
