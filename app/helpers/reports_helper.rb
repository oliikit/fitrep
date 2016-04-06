module ReportsHelper

  def time_data
    (1.week.ago.to_date..Date.today).map do |date|
      {
        created_at: date,
        workout_time: WorkoutSession.where("date(created_at) = ?", date).sum(:workout_time)
      }
    end
  end

end
