class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #validates :isAdmin, presence: true
  validates :name, presence: true
  validates :age, presence: true

  has_one_attached :avatar
  has_many :songs
end
