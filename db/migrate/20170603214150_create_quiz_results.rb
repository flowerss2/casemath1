class CreateQuizResults < ActiveRecord::Migration[5.0]
  def change
    create_table :quiz_results do |t|
      t.integer :user_id
      t.integer :quiz_id
      t.float :score

      t.timestamps

    end
  end
end
