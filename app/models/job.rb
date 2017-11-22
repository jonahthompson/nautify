class Job < ApplicationRecord
	belongs_to :user
	has_many :contracts
	has_many :jobs, through: :contracts

	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
	validates :description, :origin, :destination, :cost, :load, presence: true
	validates :cost, :load, numericality: true
	validates :cost, numericality: {greater_than_or_equal_to: 1000}
end
