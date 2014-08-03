class MarbleProduct < ActiveRecord::Base
  mount_uploader :product_pics, ProductPicsUploader
  validates_presence_of :name,:product_pics
end
