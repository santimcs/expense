class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.date :date
      t.references :category, index: true, foreign_key: true
      t.decimal :amount, precision: 7, scale: 2

      t.timestamps null: false
    end
  end
end
