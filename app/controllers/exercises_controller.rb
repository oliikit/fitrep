class ExercisesController < ApplicationController
  include ExercisesHelper

  def index
  end

  def create
    @exercise = WorkoutSession.Exercise.new(exercise_params)
    @exercise.each do |e|
      e.save
    end
  end
end
