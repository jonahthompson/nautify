class Boat < ApplicationRecord
  belongs_to :user
  has_many :contracts, dependent: :destroy
  has_many :jobs, through: :contracts

	has_attached_file :avatar, styles: { medium: "400x400>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  validates :name, presence: true, uniqueness: true
  validates :capacity, presence: true, numericality: true
  validates :location, presence: true
end
