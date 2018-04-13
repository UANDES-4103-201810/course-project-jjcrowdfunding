class Promise < ApplicationRecord
  belongs_to :project
  validates :ammount, presence: true
  validates :description, presence: true
  validates :description, length: { in 20..200}
  has_one :project
  has_many :userpromises
end
