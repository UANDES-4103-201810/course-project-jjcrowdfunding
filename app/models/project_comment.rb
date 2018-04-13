class ProjectComment < ApplicationRecord
  belongs_to :user
  belongs_to :project
  validates :user, presence: true
  validates :project, presence: true
  validates :comment, presence: true
  validates :comment, length: { in 1..200}
  has_one :user
  has_one :project
end
