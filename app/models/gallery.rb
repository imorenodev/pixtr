class Gallery < ActiveRecord::Base
  has_many :images
  belongs_to :user #creates a user method on gallery - so the gallery can know who it's user is 

  validates :name, presence: true #requires user to enter data in form
  validates :description, presence: true #requires user to enter data in form
end