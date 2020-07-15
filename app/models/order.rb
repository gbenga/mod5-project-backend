class Order < ApplicationRecord
    belongs_to :user
    belongs_to :medicine
    has_many :pharmas, through: :medicine
end
