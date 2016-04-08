class ReconfigureWorkoutSession < ActiveRecord::Migration
  def change
    create_table :workout_sessions do |t|
      t.string :workout_focus
      t.text :workout_notes
      t.integer :workout_time
      t.integer :workout_intensity
      t.timestamps null: false
    end

    create_table :exercises do |t|
      t.belongs_to :workout_session, index: true
      t.string :exercise_name
      t.integer :sets
      t.integer :reps
      t.integer :exercise_time
      t.integer :weight
      t.timestamps null: false
    end
  end
end
