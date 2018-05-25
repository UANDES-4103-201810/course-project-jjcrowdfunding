class Project < ApplicationRecord
	has_many :userratings
	has_many :userwishlists
	has_many :guestviewprojects
	has_many :projectcomments
	has_many :userprojects
	has_many :userviewprojects
	has_many :promises
	has_many :projectcategories
	has_many :users, through: :userratings
	has_many :users, through: :userwishlists
	has_many :guests, through: :guestviewprojects
	has_many :users, through: :projectcomments
	has_many :users, through: :userprojects
	has_many :users, through: :userviewprojects
	has_many :userpromises, through: :promises
	has_many :categories, through: :projectcategories
	validates :description, presence: true, length: { in: 15..500 }
	validates :title, presence: true, length: { in: 3..30 }
	validates :goalamount, presence: true, numericality: { greater_than: 0 }
	validates :duedate, presence: true
	validates :startdate, presence: true
end
