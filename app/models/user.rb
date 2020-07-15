class User < ApplicationRecord
    has_many :orders
    has_many :medicines, through: :orders
    has_many :pharmas, through: :medicines
end
