class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.integer :user_id
      t.integer :student_id
      t.boolean :present
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
