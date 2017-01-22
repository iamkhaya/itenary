class CreateBackendAdmins < ActiveRecord::Migration[5.0]
  def change
    create_table :backend_admins do |t|

      t.timestamps
    end
  end
end
