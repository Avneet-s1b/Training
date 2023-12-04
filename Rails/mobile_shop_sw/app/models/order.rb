class Order < ApplicationRecord
    belongs_to :customer
    belongs_to :product
    validates :customer_id , presence: true
    validates :product_id , presence: true

    before_create :upd_date

    private
        def upd_date
            self.date = Date.today.to_s
        end

end
