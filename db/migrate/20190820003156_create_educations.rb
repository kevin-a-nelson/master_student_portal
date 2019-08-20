class CreateEducations < ActiveRecord::Migration[6.0]
  def change
    create_table :educations do |t|
      t.integer :student_id
      t.string :start_date
      t.string :end_date
      t.string :job_title
      t.string :company_name
      t.string :details

      t.timestamps
    end
  end
end
