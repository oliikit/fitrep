module WorkoutSessionsHelper
  def workout_session_params
    params.require(:workout_session).permit(:workout_notes, :exercises, :reps,
      :workout_focus, :workout_intensity, :sets, :exercise_time, :weight, :workout_time )
  end
end
