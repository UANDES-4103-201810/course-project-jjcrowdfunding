class User < ApplicationRecord
	has_many :userprojects
	has_many :userwishlists
	has_many :projectcomments
	has_many :userpromises
	has_many :userratings
	has_many :userviewprojects
	has_many :projects, through: :projectcomments
	has_many :projects, through: :userprojects
	has_many :projects, through: :userwishlists
	has_many :projects, through: :userratings
	has_many :projects, through: :userviewprojects
	validates :name, presence: true, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }, uniqueness: true
	validates :lastname, presence: true, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
	validates :email, presence: true, format: { with: /\w+@\w+\.{1}[a-zA-Z]{2,}/}
	validates :phone, presence: true, numericality: { only_integer: true }
	validates :password, presence: true, length: { in: 8..25}
end
