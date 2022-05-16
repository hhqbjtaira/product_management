class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.references :category_id, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.datetime :create_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
