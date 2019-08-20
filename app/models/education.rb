class Education < ApplicationRecord
  belongs_to :student, optional: true
end
