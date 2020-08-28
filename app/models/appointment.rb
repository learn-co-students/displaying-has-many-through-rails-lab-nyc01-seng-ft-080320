class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient


    def date
        self.appointment_datetime.to_formatted_s(:long).first(-6)
    end
    def time
        self.appointment_datetime.to_formatted_s(:long).split[3]
    end


end
