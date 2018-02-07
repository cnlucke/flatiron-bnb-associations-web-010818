class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.references :host
      t.references :neighborhood
      t.string :address
      t.string :listing_type
      t.string :title
      t.string :description
      t.float :price, precision: 10, scale: 2
      t.timestamps null: false
    end
  end
end
