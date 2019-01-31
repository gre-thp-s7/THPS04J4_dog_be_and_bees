class CreateDogSitters < ActiveRecord::Migration[5.2]
  def change
    create_table :dog_sitters do |t|
      t.text :first_name
      t.text :last_name
      t.integer :phone_number
      t.belongs_to :city, index: true

      t.timestamps
    end
  end
end
