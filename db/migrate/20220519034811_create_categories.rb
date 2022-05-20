class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :name, presence: true, unique: true, null: false

      t.timestamps
    end
  end
end
