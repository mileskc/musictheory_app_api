class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :img_url
      t.string :instructions
      t.integer :quiz_id

      t.timestamps
    end
  end
end
