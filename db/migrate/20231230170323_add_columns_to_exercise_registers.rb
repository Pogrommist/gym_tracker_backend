class AddColumnsToExerciseRegisters < ActiveRecord::Migration[7.0]
  def change
    change_table :exercise_registers do |t|
      t.integer :sets_amount
      t.integer :reps_amount
      t.float :load
    end
  end
end
