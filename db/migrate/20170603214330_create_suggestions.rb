class CreateSuggestions < ActiveRecord::Migration[5.0]
  def change
    create_table :suggestions do |t|
      t.integer :user_id
      t.integer :lesson_id
      t.string :link_to_resource
      t.text :reason_for_submitting
      t.text :additional_comments

      t.timestamps

    end
  end
end
