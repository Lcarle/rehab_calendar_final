class Diagnosis < ActiveRecord::Base

  validates :name, :presence => true

  has_many :injuries
  has_many :routines

end
