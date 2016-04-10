class AddFieldsToWorkoutSession < ActiveRecord::Migration
  def change
    add_column :workout_sessions, :completed_date, :datetime
    add_column :workout_sessions, :workout_type, :string
  end
end
