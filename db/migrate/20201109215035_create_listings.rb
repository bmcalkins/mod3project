class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :product_type
      t.string :product_name
      t.text :img_url
      t.float :quantity
      t.float :price
     
      t.references :user, null: false, foreign_key: true
      t.references :seller, null: false, foreign_key: true

      t.timestamps
    end
  end
end
