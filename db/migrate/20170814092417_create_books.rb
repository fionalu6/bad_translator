class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.references :title, foreign_key: true
      t.references :comment, foreign_key: true
      t.references :translator, foreign_key: true

      t.timestamps
    end
  end
end
