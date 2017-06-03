class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.integer :lesson_id
      t.string :location
      t.text :description
      t.string :embed_address

      t.timestamps

    end
  end
end
