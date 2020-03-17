class Film < ApplicationRecord
  FILM_PARAMS = [:name, :country, :movie, :trailer, :image, :category_id,
    film_profile_attributes:[:id, :film_id, :release_date, :time, :resolution, :description]].freeze
  SELECT_FILM_HOME = %i(id name country movie trailer image category_id).freeze

  belongs_to :category
  has_one :film_profile, dependent: :destroy
  has_many :comments
  has_many :ratings
  has_many :actor_films
  has_one_attached :movie
  has_one_attached :trailer
  has_one_attached :image

  accepts_nested_attributes_for :film_profile

  validates :name, :movie, :trailer, :image, presence: true

  scope :create_at_desc, -> {order created_at: :desc}
  scope :action_films, -> {where category_id: 1}
  scope :romance_films, -> {where category: 2}
  scope :cartoon, -> {where category: 3}
  scope :category_films, -> (category_id){where category_id: category_id}
end
