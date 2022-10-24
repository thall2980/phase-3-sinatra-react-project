class AppointmentController < ApplicationController
    set :default_content_type, 'application/json'

    get "/appointments" do
        appointments = Appointment.all
        appointments.to_json
    end
end