class Activity < ApplicationRecord
  belongs_to :user
  validates :task, presence: true
end
