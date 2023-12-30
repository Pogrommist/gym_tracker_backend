class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.text :description
      t.text :video_url
      t.text :image_url

      t.timestamps
    end
  end
end
