class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :category
      t.string :brand
      t.string :details
      t.string :condition
      t.string :price
      t.string :pictures

      t.timestamps
    end
  end
end
