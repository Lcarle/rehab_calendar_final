class RoutineExercise < ActiveRecord::Base

  validates :reps, numericality: { :only_integer => true,
    :greater_than_or_equal_to => 1, :less_than_or_equal_to => 30}
  validates :sets, numericality: { :only_integer => true,
      :greater_than_or_equal_to => 1, :less_than_or_equal_to => 3}
  validates :routine_id, numericality: { :only_integer => true,
          :greater_than_or_equal_to => 1 }
  validates :exercise_id, numericality: { :only_integer => true,
                  :greater_than_or_equal_to => 1 }

  belongs_to :exercise
  belongs_to :routine

end
