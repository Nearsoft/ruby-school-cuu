class Event < ApplicationRecord
    validates_presence_of [:name, :start_date, :end_date]
    has_and_belongs_to_many :users, -> { distinct }

    def is_event_full?
        self.users.count >= self.max_students
    end
end
