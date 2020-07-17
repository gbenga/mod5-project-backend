class Medicine < ApplicationRecord
    has_many :stocks
    has_many :pharmas, through: :stocks
    has_many :order_medicines
    has_many :orders, through: :order_medicines
    has_many :users, through: :orders
end
