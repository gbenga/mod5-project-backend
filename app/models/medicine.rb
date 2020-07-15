class Medicine < ApplicationRecord
    belongs_to :pharma
    has_many :orders
    has_many :users, through: :orders
end
