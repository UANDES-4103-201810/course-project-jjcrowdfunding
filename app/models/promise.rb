class Promise < ApplicationRecord
  belongs_to :project
  validates :project, presence: true
  validates :ammount, presence: true, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: { in: 20..200}
  has_one :project
  has_many :userpromises
end
