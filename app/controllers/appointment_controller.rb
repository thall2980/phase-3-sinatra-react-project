class AppointmentController < ApplicationController
    set :default_content_type, 'application/json'

    get "/appointments" do
        appointments = Appointment.all.order(:date)
        appointments.to_json(include: [
            :walker,
            :dog
    ])
    end

    delete "/appointments/:id" do
        appointment = Appointment.find(params[:id])
        appointment.destroy
        appointment.to_json
    end

    post "/appointments" do
        appointment = Appointment.create(
            date: Date.parse(params[:date]),
            dog_id: params[:dog_id],
            walker_id: params[:walker_id],
        )
        newArray = []
        newArray << appointment
        newArray.to_json(include: [
            :walker,
            :dog
    ])
        end
end