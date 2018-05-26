class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
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
  validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  validates :lastname, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  validates :phone, numericality: { only_integer: true }
  validates :description, length: { in: 4..666 }
end
