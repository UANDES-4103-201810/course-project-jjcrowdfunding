class UserPromise < ApplicationRecord
  belongs_to :user
  belongs_to :promise
  validates :user, presence: true
  validates :promise, presence: true
  validates :amount, presence: true
  validates :status, presence: true
  has_one :user
  has_one :promise
end
