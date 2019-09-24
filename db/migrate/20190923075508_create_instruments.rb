class CreateInstruments < ActiveRecord::Migration[5.2]
  def change
    create_table :instruments do |t|
      t.string :brand
      t.string :model
      t.text :description
      t.string :condition
      t.string :finish
      t.string :title
      # could be an integer if you want, here we set a precision, scale, and default starting point for the decimal
      t.decimal :price, precision: 5, scale: 2, default: 0

      t.timestamps
    end
  end
end
