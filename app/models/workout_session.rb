class WorkoutSession < ActiveRecord::Base
  has_many :exercises, dependent: :destroy
end
