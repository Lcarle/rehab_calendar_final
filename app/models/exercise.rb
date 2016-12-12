class Exercise < ActiveRecord::Base

  validates :name, :presence => true
  validates :description, :presence => true
  validates :image, :presence => true

  has_many :routine_exercises
  has_many :routines, :through => :routine_exercises

end
