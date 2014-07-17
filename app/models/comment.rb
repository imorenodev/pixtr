class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :image

  scope :chronological, -> { order(created_at: :desc) }

end