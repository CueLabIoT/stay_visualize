class CreateMotions < ActiveRecord::Migration
  def change
    create_table :motions do |t|
      t.string :hostid
      t.boolean :flag
      t.datetime :switchtime

      t.timestamps null: false
    end
  end
end
