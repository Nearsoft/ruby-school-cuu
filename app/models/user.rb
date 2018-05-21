class User < ApplicationRecord
  before_save :normalize_first_name_and_last_name
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true, uniqueness: true
  has_and_belongs_to_many :events, -> { distinct }

  private 

  def normalize_first_name_and_last_name
    self.first_name = self.first_name.humanize.titleize
    self.last_name = self.last_name.humanize.titleize
  end
end
