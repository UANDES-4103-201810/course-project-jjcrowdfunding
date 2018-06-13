class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, omniauth_providers: %i[facebook]
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
  validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }, on: :update
  validates :lastname, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }, on: :update
  validates :phone, numericality: { only_integer: true }, on: :update
  validates :description, length: { in: 4..666 }, on: :update
  def self.search(search)
    where("name LIKE ? OR lastname LIKE ?", "%#{search}%", "%#{search}%") #para agregar usuarios a la busquda agregar like user ?
  end
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name   # assuming the user model has a name
      # user.image = auth.info.image # assuming the user model has an image
      # If you are using confirmable and the provider(s) you use validate emails, 
      # uncomment the line below to skip the confirmation emails.
      # user.skip_confirmation!
    end
  end
end
