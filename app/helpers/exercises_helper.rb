module ExercisesHelper
  def exercise_params
    params_require(:exercise).permit(:exercise_name, :reps, :sets, :exercise_time, :weight)
  end
end
