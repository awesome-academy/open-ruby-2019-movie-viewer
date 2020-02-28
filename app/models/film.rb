class Film < ApplicationRecord
  belongs_to :category
  has_one :film_profile, dependent: :destroy
  has_many :comments
  has_many :ratings
  has_many :actor_films
end
