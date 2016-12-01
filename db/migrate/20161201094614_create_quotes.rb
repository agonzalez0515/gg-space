class CreateQuotes < ActiveRecord::Migration
  def change
    create_quotes :quotes do |t|
      t.text :quote
      t.string :character

      t.timestamps null: false
    end
  end
end
