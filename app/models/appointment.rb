class Appointment < ApplicationRecord
    belongs_to :patient
    belongs_to :doctor

    def formatted_datetime
        datetime = self.appointment_datetime
        datetime.strftime("%B %d, %Y at %H:%M")
    end
end
