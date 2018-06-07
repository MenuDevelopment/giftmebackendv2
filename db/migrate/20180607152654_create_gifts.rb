class CreateGifts < ActiveRecord::Migration[5.1]
  def change
    create_table :gifts do |t|
      t.string :item_name
      t.string :item_link
      t.string :item_description
      t.float :item_price
      t.date :end_date

      t.timestamps
    end
  end
end
