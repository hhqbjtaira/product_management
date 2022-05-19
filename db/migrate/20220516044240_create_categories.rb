class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.datetime :create_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
