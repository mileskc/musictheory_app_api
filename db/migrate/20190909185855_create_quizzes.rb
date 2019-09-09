class CreateQuizzes < ActiveRecord::Migration[6.0]
  def change
    create_table :quizzes do |t|
      t.string :title
      t.string :description
      t.string :img_url

      t.timestamps
    end
  end
end
