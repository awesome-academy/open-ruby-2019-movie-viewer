class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :film

  validates :star, numericality: {greater_than_or_equal_to: Settings.numericality}

  scope :create_at_desc, -> {order created_at: :desc}
end
