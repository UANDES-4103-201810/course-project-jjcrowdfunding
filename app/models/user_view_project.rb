class UserViewProject < ApplicationRecord
  belongs_to :user
  belongs_to :project
  validates :user, presence: true
  validates :project, presence: true
  has_one :user
  has_one :project
end
