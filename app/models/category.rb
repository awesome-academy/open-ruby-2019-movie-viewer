class Category < ApplicationRecord
  has_many :films, dependent: :destroy

  validates :name, presence: true

  scope :create_at_desc, -> {order created_at: :desc}
  scope :select_limmit, -> {select(:id, :name).last Settings.limmit_category}

  CATEGORY_PARAMS = %i(name).freeze
end
