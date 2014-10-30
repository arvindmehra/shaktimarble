class KotaStone < ActiveRecord::Base

  mount_uploader :kota_stone_pics, KotaStonePicsUploader
  validates_presence_of :name

end
