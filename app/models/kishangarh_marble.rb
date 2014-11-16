class KishangarhMarble < ActiveRecord::Base

  mount_uploader :kishangarh_marble_pics, KishangarhMarblePicsUploader
  mount_uploader :zoom_image, KishangarhMarblePicsUploader
  validates_presence_of :name

  CATEGORY = ["morwad_marble", "aarna","dharmeta","toronto","katni","sawar_marble","pink_marble"]

  scope :morwad_marble, ->{where(:category => "morwad_marble")}
  scope :aarna, ->{where(:category => "aarna")}
  scope :dharmeta, ->{where(:category => "dharmeta")}
  scope :toronto, ->{where(:category => "toronto")}
  scope :katni, ->{where(:category => "katni")}
  scope :sawar_marble, ->{where(:category => "sawar_marble")}
  scope :pink_marble, ->{where(:category => "pink_marble")}

end
