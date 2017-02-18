class CreateProvidersOpeningTimes < ActiveRecord::Migration[5.0]
  def change
    create_table :providers_opening_times do |t|
      t.string :opening_time
      t.string :timestamp
      t.timestamp :closing_time
      t.string :day_of_week

      t.timestamps
    end
  end
end
