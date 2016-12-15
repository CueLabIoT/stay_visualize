class CreateToirets < ActiveRecord::Migration
  def change
    create_table :toirets do |t|
      t.datetime :datetime
      t.boolean :flag
      t.float :used_time
      t.string :toiret_floor
      t.string :toiret_num

      t.timestamps null: false
    end
  end
end
