class Contract < ApplicationRecord
  belongs_to :job, dependent: :destroy
  belongs_to :boat, dependent: :destroy
end
