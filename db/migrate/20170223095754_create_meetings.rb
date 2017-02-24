class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.datetime :datetime
      t.boolean :flag
      t.float :used_time
      t.integer :room_floor
      t.string :room_name

      t.timestamps null: false
    end
  end
end
