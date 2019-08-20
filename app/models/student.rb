class Student < ApplicationRecord
  has_many :educations
  # belongs_to :user
end
