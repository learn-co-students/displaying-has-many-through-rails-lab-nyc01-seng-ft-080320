class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def get_date
        self.appointment_datetime.to_formatted_s(:long).first(-6)
    end

    def get_time
        self.appointment_datetime.to_formatted_s(:long).split[3]
    end

    # def date_time_format
    #     self.appointment_datetime.to_formatted_s(:long)
    # end
end
