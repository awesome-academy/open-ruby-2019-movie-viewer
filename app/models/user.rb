class User < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :ratings, dependent: :destroy

  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
end