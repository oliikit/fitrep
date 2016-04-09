class WorkoutSessionsController < ApplicationController
  include WorkoutSessionsHelper

  def index
    @workout_sessions = WorkoutSession.all
  end

  def show
    @workout_session = WorkoutSession.find(params[:id])
    @exercises = @workout_session.exercises
  end

  def new
    @workout_session = WorkoutSession.new
    @workout_session.exercises.build
  end

  def create
    @workout_session = WorkoutSession.new(workout_session_params)
    @exercise = @workout_session.exercises.build
    @workout_session.save
    @exercise.save
    redirect_to workout_session_path(@workout_session)
  end

  def destroy
    @workout_session = WorkoutSession.find(params[:id])
    flash.notice = "Workout '#{@workout_session.workout_notes}' Deleted!"
    @workout_session.destroy
    redirect_to workout_sessions_path(@workout_sessions)
  end

  def edit
    @workout_session = WorkoutSession.find(params[:id])
  end

  def update
    @workout_session = WorkoutSession.find(params[:id])
    @workout_session.update(workout_session_params)

    redirect_to workout_session_path(@workout_session)
  end

  private
    def workout_session_params
      params.require(:workout_session).permit(:workout_notes,:workout_focus, :workout_intensity, :workout_time,
                      exercises_attributes:[:id, :workout_session_id, :exercise_name, :sets, :reps, :weight, :exercise_time, :_destroy])
    end
end
