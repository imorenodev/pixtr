class Gallery < ActiveRecord::Base
  has_many :images

  validates :name, presence: true #requires user to enter data in form
  validates :description, presence: true #requires user to enter data in form
end