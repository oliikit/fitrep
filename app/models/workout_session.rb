class WorkoutSession < ActiveRecord::Base
  has_many :exercises
  accepts_nested_attributes_for :exercises, reject_if: :all_blank, allow_destroy: true
end
