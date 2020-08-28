class AppointmentsController < ApplicationController
    before_action :set_appointment, only: [:show]

    def show
        @appointment = Appointment.find(params[:id])
    end


    private

    def set_appointment
        @appointment = Appointment.find(params[:id])
    end

    def appointment_params
        params.require(:appointment).permit(:datetime, :patient, :doctor)
    end
end
