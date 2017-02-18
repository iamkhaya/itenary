class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.integer :street_number
      t.string :street_name
      t.string :suburb
      t.string :city
      t.string :region
      t.integer :postal_code
      t.integer :box_number
      t.string :country
      t.string :continent

      t.timestamps
    end
  end
end
