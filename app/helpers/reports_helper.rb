module ReportsHelper

  def time_data
    (1.week.ago.to_date..Date.today).map do |date|
      {
        completed_date: date,
        workout_time: WorkoutSession.where("date(completed_date) = ?", date).sum(:workout_time)
      }
    end
  end


end
