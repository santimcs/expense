class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :sequence
      t.string :name
      t.decimal :default, precision: 7, scale: 2
      t.references :group, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
