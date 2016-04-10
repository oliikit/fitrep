module WorkoutSessionsHelper

  def last_workout_focus
    @last = WorkoutSession.select("workout_focus, id").last
    @last.workout_focus
  end

  def average_workout_time
    @avg_time = WorkoutSession.average(:workout_time)
    @avg_time.round
  end

end
