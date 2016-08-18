class WorkoutSession < ActiveRecord::Base
  before_save :calculate_workout_time

  has_many :exercises
  accepts_nested_attributes_for :exercises, reject_if: :all_blank, allow_destroy: true

  validates_presence_of :workout_focus, :workout_type, :hour, :minute, :workout_intensity, :completed_date
  validates :hour, :minute, numericality: { only_integer: true }
  validates :minute, numericality: { less_than_or_equal_to: 59 }


  def calculate_workout_time
    self.workout_time = (self.hour * 60) + self.minute
  end

end
