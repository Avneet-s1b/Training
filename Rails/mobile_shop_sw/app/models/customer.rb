# class MyValidator < ActiveModel::Validator
#     def validate(record)
#         unless record.name.start_with? 'X'
#             record.errors.add :name, "Provide a name starting with X, please!"
#         end
#     end
# end

class Customer < ApplicationRecord
    # validates :name, presence: {message:"name cant be empty"}

    # validate do |person|
    #     errors.add :name, message: "is not cool enough"
    # end

    # after_create -> { puts "Congratulations!" }

    # validates :end, comparison: { greater_than: :start }
    # validates :name, inclusion: { in: ['Action', 'Science Fiction', 'Drama', 'Horror', 'Comedy', 'Musical'] }, allow_nil: true
    # validates :end, numericality: {only_integer:true, strict:true}
    # validates :adhar_number, presence: true, unless: Proc.new{|obj| obj.mobile.empty?}
    # validates :adhar_number, presence: true, unless: Proc.new{|obj| obj.mobile.empty?}
    
    
    # def mobile_pres
    #     mobile.empty? == false
    # end

    # validates_with MyValidator
end
