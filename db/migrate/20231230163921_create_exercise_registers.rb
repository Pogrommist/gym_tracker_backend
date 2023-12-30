class CreateExerciseRegisters < ActiveRecord::Migration[7.0]
  def change
    create_table :exercise_registers do |t|
      t.references :exercise_set, null: false, foreign_key: true
      t.references :exercise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
