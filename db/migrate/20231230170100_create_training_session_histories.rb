class CreateTrainingSessionHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :training_session_histories do |t|
      t.integer :sets_amount
      t.integer :reps_amount
      t.float :load
      t.references :training_session, null: false, foreign_key: true
      t.references :exercise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
