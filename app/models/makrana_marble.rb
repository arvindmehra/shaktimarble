class MakranaMarble < ActiveRecord::Base
  mount_uploader :makrana_marble_pics, MakranaMarblePicsUploader
  validates_presence_of :name,:makrana_marble_pics
end
