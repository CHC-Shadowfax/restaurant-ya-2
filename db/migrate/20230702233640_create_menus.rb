class CreateMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :menus do |t|
      t.string :name
      t.integer :price, default: 0
      t.float :percent_discount, default: 0
      t.boolean :available, default: false
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
