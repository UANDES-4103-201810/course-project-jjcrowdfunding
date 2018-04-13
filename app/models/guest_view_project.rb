class GuestViewProject < ApplicationRecord
  belongs_to :guest
  belongs_to :project
end
