module WorkoutSessionsHelper
  def workout_session_params
    params.require(:workout_session).permit(:workout_notes,:workout_focus, :workout_intensity, :workout_time)

    params_require(:exercise).permit(:exercise_name, :reps, :sets, :exercise_time, :weight)
    end
  end
