class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, presence: true, uniqueness: true
  validates_associated :doses
  mount_uploader :photo, PhotoUploader
end
