class Boat < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :capacity, presence: true, numericality: true
  validates :location, presence: true
end
