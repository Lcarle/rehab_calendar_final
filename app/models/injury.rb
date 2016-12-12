class Injury < ActiveRecord::Base

  validates :user_id, :presence => true
  validates :injury_date, :presence => true
  validates :begin_rehab_on, :presence => true


  belongs_to :user
  belongs_to :diagnosis

end
