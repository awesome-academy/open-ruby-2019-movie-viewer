class Category < ApplicationRecord
  has_many :films, dependent: :destroy
end
