class Medicine < ApplicationRecord
    belongs_to :pharma
    has_one :order
    has_one :user, through: :order
end
