class Event < ApplicationRecord
    validates_presence_of [:name, :start_date, :end_date]
    has_and_belongs_to_many :users, -> { distinct }
end
