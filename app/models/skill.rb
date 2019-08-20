class Skill < ApplicationRecord
  belongs_to :student, optional: true
end
