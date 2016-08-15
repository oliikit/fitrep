class AddHourToWorkoutSessions < ActiveRecord::Migration
  def change
    add_column :workout_sessions, :hour, :integer
    add_column :workout_sessions, :minute, :integer
  end
end
