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
  end

  def create
    @workout_session = WorkoutSession.new(workout_session_params)
    @workout_session.save
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
end
