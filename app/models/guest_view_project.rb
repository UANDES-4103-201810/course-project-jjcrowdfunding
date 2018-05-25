class GuestViewProject < ApplicationRecord
  belongs_to :guest
  belongs_to :project
  validates :guest, presence: true
  validates :project, presence: true
  has_one :guest
  has_one :project
end
