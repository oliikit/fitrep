module WorkoutSessionsHelper

  def last_workout_focus
    @last = WorkoutSession.select("workout_focus, id").last
    if @last.nil?
      "You have not logged any workouts."
    else
      @last.workout_focus
    end
  end

  def average_workout_time
    @avg_time = WorkoutSession.average(:workout_time)
  end

  def last_workout_date
    @last = WorkoutSession.select("completed_date").last
    if @last.nil?
      "You have not logged any workouts."
    else
      @last.completed_date.to_s(:long)
    end
  end

end
