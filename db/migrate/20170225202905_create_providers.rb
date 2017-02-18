class CreateProviders < ActiveRecord::Migration[5.0]
  def change
    create_table :providers do |t|
      t.string :name
      t.string :payment_type
      t.string :branch
      t.string :bank_detail

      t.timestamps
    end
  end
end
