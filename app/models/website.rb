# app/models/website.rb
class Website < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
end
