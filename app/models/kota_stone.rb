class KotaStone < ActiveRecord::Base

  mount_uploader :kota_stone_pics, KotaStonePicsUploader
  mount_uploader :zoom_image, KotaStonePicsUploader

  validates_presence_of :name

end
