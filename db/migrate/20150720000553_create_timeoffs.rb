class CreateTimeoffs < ActiveRecord::Migration
  def change
    create_table :timeoffs do |t|
      t.date :dayoff
      t.time :start
      t.time :finish
      t.string :explanation
      t.references :teammember

      t.timestamps null: false
    end
  end
end
