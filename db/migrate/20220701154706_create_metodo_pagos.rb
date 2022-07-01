class CreateMetodoPagos < ActiveRecord::Migration[7.0]
  def change
    create_table :metodo_pagos do |t|
      t.string :code
      t.string :name
      t.string :string
      t.references :producto, null: false, foreign_key: true

      t.timestamps
    end
  end
end
