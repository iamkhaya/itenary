class CreateActivities < ActiveRecord::Migration[5.0]

  def up
    create_table :activities do |t|
      t.column "name", :string
      t.column "category", :string
      t.column "description", :string
      t.timestamps
    end
  end

  def down
    drop_table :activities
  end


end
