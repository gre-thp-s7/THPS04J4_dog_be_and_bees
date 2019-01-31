class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.text :dog_name
      t.text :owner
      t.text :race
      t.text :alimentation
      t.integer :owner_phone_number
      t.belongs_to :city, index: true
      t.timestamps
    end
  end
end
