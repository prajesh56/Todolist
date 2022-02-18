class User < ApplicationRecord
    validates :name, presence: true
    validates :address, presence: true
    has_many :activities,  dependent: :delete_all
end
