class CreateProvidersPaymentTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :provider_payment_types do |t|
      t.string :type

      t.timestamps
    end
  end
end
