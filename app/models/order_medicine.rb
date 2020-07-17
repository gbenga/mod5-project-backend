class OrderMedicine < ApplicationRecord
    belongs_to :order
    delegate :user, :to => :order, :allow_nil => true
    belongs_to :medicine
    has_many :stocks, through: :medicine
    has_many :pharmas, through: :stocks
end
