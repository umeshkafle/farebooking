class CreateFares < ActiveRecord::Migration
  def change
    create_table :fares do |t|
      t.string :destination
      t.string :from
      t.datetime :time
      t.float :price

      t.timestamps null: false
    end
  end
end
