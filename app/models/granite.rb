class Granite < ActiveRecord::Base
  mount_uploader :granite_pics, GranitePicsUploader
  validates_presence_of :name,:granite_pics

  CATEGORY = ["north","south"]

  scope :north_area, ->{where(:category => "north")}
  scope :south_area, ->{where(:category => "south")}
end
