class ProjectCategory < ApplicationRecord
  belongs_to :project
  belongs_to :category
  validates :project, presence: true
  validates :category, presence: true
  has_one :project
  has_one :category
end
