class Pharma < ApplicationRecord
    has_many :medicines
    has_many :orders, through: :medicines
    has_many :users, through: :orders
end
