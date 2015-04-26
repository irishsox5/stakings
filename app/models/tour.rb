class Tour < ActiveRecord::Base

  mount_uploader :image, ImageUploader

  has_many :tournaments
end
