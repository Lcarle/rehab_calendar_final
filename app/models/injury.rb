class Injury < ActiveRecord::Base

  validates :user_id, :presence => true
  validates :injury_date, :presence => true


  belongs_to :user
  belongs_to :diagnosis

end
