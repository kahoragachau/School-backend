class CreateClassrooms < ActiveRecord::Migration[7.0]
  def change
    create_table :classrooms do |t|
      t.string :name
      t.string :school_id
      t.string :educator_id
      t.string :student_id

      t.timestamps
    end
  end
end
