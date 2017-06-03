class CreateLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :lessons do |t|
      t.string :lesson_name
      t.integer :video_id
      t.integer :resources_id

      t.timestamps

    end
  end
end
