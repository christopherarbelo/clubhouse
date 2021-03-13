class Post < ApplicationRecord
  validates :message, presence: true, length: { in: 1..200 }
  belongs_to :user
  validates_associated :user
end
