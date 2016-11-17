# app/models/contact.rb
class Contact < ApplicationRecord
  belongs_to :website
  belongs_to :church_position
end
