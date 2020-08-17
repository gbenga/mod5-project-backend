class Pharma < ApplicationRecord
    has_many :stocks
    has_many :medicines, through: :stocks
    has_many :order_medicines, through: :medicines
    has_many :orders, through: :order_medicines
    has_many :users, through: :orders
end
