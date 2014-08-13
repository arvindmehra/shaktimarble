class Granite < ActiveRecord::Base
  mount_uploader :granite_pics, GranitePicsUploader
  validates_presence_of :name,:granite_pics
end
