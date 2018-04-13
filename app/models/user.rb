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
	validates :name, presence: true
	validates :lastname, presence: true
	validates :email, presence: true
	validates :phone, presence: true
	validates :password, presence: true
	validates :password, length: { in: 8..25}
end
