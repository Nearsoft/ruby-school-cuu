class Event < ApplicationRecord
    validates_presence_of [:name, :start_date, :end_date]
end
