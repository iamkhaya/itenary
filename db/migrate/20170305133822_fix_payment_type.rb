class FixPaymentType < ActiveRecord::Migration[5.0]
  def change
    rename_column :providers_payment_types, :type, :payment_type
  end
end
