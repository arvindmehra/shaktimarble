class MakranaMarble < ActiveRecord::Base
  mount_uploader :makrana_marble_pics, MakranaMarblePicsUploader
  validates_presence_of :name

  CATEGORY = ["albeta","dungri","kumari","makrana_kumari","matevari_kumari","white_marble"]

  scope :white_marble, ->{where(:category => "white_marble")}
  scope :albeta_marble, ->{where(:category => "albeta")}
  scope :dungri_marble, ->{where(:category => "dungri")}
  scope :kumari_marble, ->{where(:category => "kumari")}

end
