class CreateProvidersBranches < ActiveRecord::Migration[5.0]
  def change
    create_table :providers_branches do |t|
      t.string :provider
      t.string :address
      t.integer :phone_number
      t.integer :landline
      t.integer :cell_number
      t.timestamp :opening_times
      t.string :bank_detail

      t.timestamps
    end
  end
end
