class User < ApplicationRecord
    has_many :orders
    has_many :order_medicines, through: :orders
    has_many :medicines, through: :order_medicines
    has_many :stocks, through: :medicines
    has_many :pharmas, through: :stocks
end
