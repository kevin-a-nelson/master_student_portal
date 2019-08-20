class AddStudentIdToExperience < ActiveRecord::Migration[6.0]
  def change
    add_column :experiences, :student_id, :integer
  end
end
