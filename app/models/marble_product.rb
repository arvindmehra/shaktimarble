class MarbleProduct < ActiveRecord::Base

  mount_uploader :product_pics, ProductPicsUploader
  mount_uploader :zoom_image, ProductPicsUploader

  validates_presence_of :name,:product_pics

  CATEGORY = ["statue","floor_design","temple"]

  scope :statue, ->{where(:category => "statue")}
  scope :floor_design, ->{where(:category => "floor_design")}
  scope :temple, ->{where(:category => "temple")}

end
