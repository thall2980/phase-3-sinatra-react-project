class CreateWalkers < ActiveRecord::Migration[6.1]
  def change
    create_table :walkers do |t|
      t.string :name
      t.integer :years_of_experience
      t.string :pace
      t.timestamps
    end
    
  end
end
