class Diagnosis < ActiveRecord::Base

  has_many :injuries
  has_many :routines

end
