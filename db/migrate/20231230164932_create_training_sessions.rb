class CreateTrainingSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :training_sessions do |t|
      t.datetime :started_at
      t.datetime :ended_at
      t.boolean :is_fully_completed
      t.references :exercise_set, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
