class Order < ApplicationRecord
    belongs_to :user
    belongs_to :medicine
    has_one :pharma, through: :medicine
end
