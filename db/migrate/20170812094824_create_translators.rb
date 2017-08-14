class CreateTranslators < ActiveRecord::Migration[5.1]
  def change
    create_table :translators do |t|
      t.string :name
      t.string :book_title
      t.integer :isbn

      t.timestamps
    end
  end
end
