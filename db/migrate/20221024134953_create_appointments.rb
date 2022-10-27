class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.date :date
      t.integer :dog_id
      t.integer :walker_id
      t.timestamps
    end
    
  end
end
