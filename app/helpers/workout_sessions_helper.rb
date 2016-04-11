module WorkoutSessionsHelper

  def last_workout_focus
    @last = WorkoutSession.select("workout_focus, id").last
    @last.workout_focus
  end

  def average_workout_time
    @avg_time = WorkoutSession.average(:workout_time)
    @avg_time.round
  end

  def last_workout_date
    @last = WorkoutSession.select("completed_date, id").last
    @last.completed_date
  end

end
