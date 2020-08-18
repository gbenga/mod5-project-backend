class Stock < ApplicationRecord
    belongs_to :pharma
    belongs_to :medicine
    has_many :order_medicines, through: :medicine
    has_many :orders, through: :order_medicines
    has_many :users, through: :orders
end
