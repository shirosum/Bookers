class User < ApplicationRecord
	validates :name,
		uniqueness: true,
		presence: true,
		length: { in: 2..20 }
	validates :body,
		length: { maximum: 50 }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


    has_many :books, dependent: :destroy
	attachment :image

end
