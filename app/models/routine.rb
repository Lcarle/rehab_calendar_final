class Routine < ActiveRecord::Base



  belongs_to :diagnosis
  has_many :routine_exercises
  has_many :exercises, :through => :routine_exercises

end
