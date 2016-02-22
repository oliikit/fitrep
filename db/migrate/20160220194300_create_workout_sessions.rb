class CreateWorkoutSessions < ActiveRecord::Migration
  def change
    create_table :workout_sessions do |t|
      t.string :workout_focus
      t.text :workout_notes
      t.integer :workout_time
      t.integer :workout_intensity
      t.string :exercises
      t.integer :sets
      t.integer :reps
      t.integer :exercise_time
      t.integer :weight
      t.timestamps null: false
    end
  end
end
