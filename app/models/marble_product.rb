class MarbleProduct < ActiveRecord::Base
  mount_uploader :product_pics, ProductPicsUploader
  mount_uploader :zoom_image, ProductPicsUploader
  validates_presence_of :name,:product_pics
end
