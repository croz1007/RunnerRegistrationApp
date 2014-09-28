class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :name
      t.text	:description
      t.date :date
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.integer :zip
      t.decimal :fee, precision: 8, scale: 2

      t.timestamps
    end
  end
end
