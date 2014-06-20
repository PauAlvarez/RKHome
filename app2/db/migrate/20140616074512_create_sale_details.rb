class CreateSaleDetails < ActiveRecord::Migration
  def change
    create_table :sale_details do |t|
      t.float :preciounitario
      t.float :cantidad
      t.float :importe
      t.references :sale, index: true
      t.references :product, index: true

      t.timestamps
    end
  end
end
