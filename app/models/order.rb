class Order < ApplicationRecord
    belongs_to :user
    has_many :order_medicines
    has_many :medicines, through: :order_medicines
    has_many :stocks, through: :medicines
    has_many :pharmas, through: :stocks
end
