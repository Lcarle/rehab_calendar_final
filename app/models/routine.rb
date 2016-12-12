class Routine < ActiveRecord::Base

  validates :week, numericality: { :only_integer => true,
    :greater_than_or_equal_to => 1, :less_than_or_equal_to => 52}

  belongs_to :diagnosis
  has_many :routine_exercises
  has_many :exercises, :through => :routine_exercises

end
