class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :username, uniqueness: true, presence: true, length: { in: 3..13 }
  validates :name, uniqueness: true, presence: true, length: { in: 2..15 }
  has_many :posts, dependent: :destroy
end
