class AppointmentsController < ApplicationController

    def show
        @appointment = Appointment.find(params[:id])
        time = @appointment.appointment_datetime
        @time = time.strftime('%B %d, %Y at %H:%M')

    end
end


#March 15, 2016