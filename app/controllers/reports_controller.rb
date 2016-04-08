class ReportsController < ApplicationController
  include ReportsHelper

  def index
    @workout_sessions = WorkoutSession.all
  end

  def show
    @workout_session = WorkoutSession.find(params[:id])
    @exercises = @workout_session.exercises
  end



end
