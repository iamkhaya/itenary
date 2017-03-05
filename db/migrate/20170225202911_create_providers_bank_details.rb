class CreateProvidersBankDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :providers_bank_details do |t|
      t.string :bank
      t.integer :account_number
      t.string :branch
      t.string :branch_code
      t.string :swift_code

      t.timestamps
    end
  end
end
