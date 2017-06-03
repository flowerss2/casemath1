class CreateMiniQuizzes < ActiveRecord::Migration[5.0]
  def change
    create_table :mini_quizzes do |t|
      t.integer :lesson_id
      t.text :description
      t.string :location
      t.string :embed_address

      t.timestamps

    end
  end
end
