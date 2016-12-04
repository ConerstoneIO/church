class SliderPicture < ApplicationRecord
  mount_uploader :picture, PictureUploader
  belongs_to :website
end
