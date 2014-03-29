class CreatePerformanceEvaluations < ActiveRecord::Migration
  def change
    create_table :performance_evaluations do |t|
      t.string :teacher_firstname
      t.string :teacher_lastname
      t.string :student_firstname
      t.string :student_lastname
      t.integer :point
      t.text :comment
      t.string :lesson_name

      t.timestamps
    end
  end
end
