class User < ApplicationRecord
    has_many :orders
    has_many :medicines, through: :orders
    has_many :pharmas, through: :medicines
end
