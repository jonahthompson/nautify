class Job < ApplicationRecord
	belongs_to :user
	has_many :contracts
	has_many :boats, through: :contracts

	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
	validates :description, :origin, :destination, :cost, :load, presence: true
	validates :description, length: {minimum: 50}
	validates :cost, :load, numericality: true
	validates :cost, numericality: {greater_than_or_equal_to: 1000}
	validates :origin, inclusion: { in: ['Los Angeles, CA', 'San Diego, CA', 'Sydney, AU', 'Tokyo, JP', 'Tianjin, CN'],
    message: "%{value} is not a valid destination" }
  validates :destination, inclusion: { in: ['Los Angeles, CA', 'San Diego, CA', 'Sydney, AU', 'Tokyo, JP', 'Tianjin, CN'],
    message: "%{value} is not a valid destination" }
  # validates :destination, :origin_different_from_destination

  # def origin_different_from_destination
  #   if origin == destination
  #     errors.add(:destination, "can't be the same as origin")
  #   end
  # end
end
