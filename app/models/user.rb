class User < ApplicationRecord
	has_many :userprojects
	has_many :userwishlists
	has_many :projectcomments
	has_many :userpromises
	has_many :userratings
	has_many :userviewprojects
	has_many :projects, through: :projectcomments
	has_many :projects, through: :userprojectshd
	has_many :projects, through: :userwishlists
	has_many :projects, through: :userratingshd
	has_many :projects, through: :userviewprojects
	validates :nick, presence: true, format: { with: /\w+{1}[a-zA-Z]{2,}/ }, uniqueness: true
	validates :name, presence: true, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
	validates :lastname, presence: true, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
	validates :email, presence: true, format: { with: /\w+@\w+\.{1}[a-zA-Z]{2,}/ }
	validates :phone, presence: true, numericality: { only_integer: true }
	validates :password, presence: true, length: { in: 8..25 }
	validates :description, presence: true, length: { in: 4..666 }
end
