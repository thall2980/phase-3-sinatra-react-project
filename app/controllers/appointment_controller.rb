class AppointmentController < ApplicationController
    set :default_content_type, 'application/json'

    get "/appointments" do
        appointments = Appointment.all
        appointments.to_json(include: :walker)
    end

    post "/appointments" do
        appointment = Appointment.create(
            date: params[:date],
            dog_id: params[:dog_id],
            walker_id: params[:walker_id],
        )
        newArray = []
        newArray << appointment
        newArray.to_json(include: :walker)
        end
end