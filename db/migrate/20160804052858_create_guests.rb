class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :name
      t.string :email
      t.text :comments
      t.boolean :publish
      t.datetime :publish_date

      t.timestamps null: false
    end
  end
end
