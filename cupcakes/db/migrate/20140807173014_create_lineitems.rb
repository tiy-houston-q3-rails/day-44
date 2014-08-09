class CreateLineitems < ActiveRecord::Migration
  def change
    create_table :lineitems do |t|
      t.references :order, index: true
      t.integer :quantity
      t.references :cupcake

      t.timestamps
    end
  end
end
