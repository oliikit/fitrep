class WorkoutSession < ActiveRecord::Base
  has_many :exercises
  accepts_nested_attributes_for :exercises, reject_if: :all_blank, allow_destroy: true
  validates_presence_of :workout_focus, :workout_type, :workout_time, :workout_intensity, :completed_date

end
