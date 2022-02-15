class Activity < ApplicationRecord
  validates :task, presence: true
end
