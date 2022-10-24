class CreateDogs < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :owner
      t.string :breed
      t.string :temperament
      t.integer :age
      t.string :image
      t.timestamps
    end
    
  end
end
