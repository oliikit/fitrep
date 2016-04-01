class ExercisesController < ApplicationController
  include ExercisesHelper

  def index
  end

  def create
    @exercise = WorkoutSession.Exercise.new(exercise_params)
    @exercises.save
  end
end
