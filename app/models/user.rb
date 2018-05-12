class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  has_and_belongs_to_many :events, -> { distinct }
end
