class Group < ActiveRecord::Base
  has_many :group_memberships
  has_many :users, through: :group_memberships
  has_and_belongs_to_many :images

  validates :name, presence: true #requires user to enter data in form
  validates :description, presence: true #requires user to enter data in form
end
