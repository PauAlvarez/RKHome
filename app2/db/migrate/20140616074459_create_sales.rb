class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.date :fecha
      t.float :importe
      t.references :client, index: true

      t.timestamps
    end
  end
end
