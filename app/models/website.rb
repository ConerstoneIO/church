# app/models/website.rb
class Website < ApplicationRecord
  belongs_to :user
  has_many :contacts
  has_many :slider_pictures
  validates :user, presence: true
end
