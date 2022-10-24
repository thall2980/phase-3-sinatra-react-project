class AppointmentController < ApplicationController
    set :default_content_type, 'application/json'

    get "/appointments" do
        appointments = Appointment.all
        appointments.to_json
    end

    post "/appointments" do
        appointment = Appointment.create(
            date: params[:id],
            dog_id: params[:dog_id],
            walker_id: params[:walker_id],
        )
        appointment.to_json
    end
end