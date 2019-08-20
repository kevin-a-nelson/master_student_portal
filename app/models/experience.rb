class Experience < ApplicationRecord
  belongs_to :student, optional: true
end
