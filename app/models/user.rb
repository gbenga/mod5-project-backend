class User < ApplicationRecord
    has_secure_password
    
    has_many :orders
    has_many :order_medicines, through: :orders
    has_many :medicines, through: :order_medicines
    has_many :stocks, through: :medicines
    has_many :pharmas, through: :stocks

    validates :first_name, :last_name, :phone, :address, :dob, :sex, :username, presence: true
    validates :username, length: { in: 2..20 }
    validates :username, uniqueness: { case_sensitive: false }
    validates :phone, length: { is: 11, wrong_length: "Phone numbers in the UK are exactly 11 numbers long. Where are you from?" }
    validates :phone, numericality: { message: "%{value} isn't a number..." }

    def valid_password?
        self.password.length > 6
    end
end
