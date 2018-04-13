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
	validates :description, presence: true
	validates :description, length: { in: 50..500}
	validates :tittle, presence: true
	validates :description, presence: true
	validates :goal_amount, presence: true
	validates :duedate, presence: true
	
end
