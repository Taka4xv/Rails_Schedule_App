class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.string :title
      t.date :start_at
      t.date :finish_at
      t.boolean :allday
      t.string :memo

      t.timestamps
    end
  end
end

