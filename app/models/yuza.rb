class Yuza < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: { in: 2..20 }

  has_many :hons

  attachment :yuza_gazou
end
