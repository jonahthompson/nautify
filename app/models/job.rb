class Job < ApplicationRecord
	belongs_to :user

	validates :description, :origin, :destination, :cost, :load, presence: true
	validates :cost, :load, numericality: true
	validates :cost, numericality: {greater_than_or_equal_to: 1000}
end
