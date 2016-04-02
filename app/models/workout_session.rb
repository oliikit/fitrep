class WorkoutSession < ActiveRecord::Base
  has_many :exercises
  accepts_nested_attributes_for :exercises,
    :allow_destroy => true
end
