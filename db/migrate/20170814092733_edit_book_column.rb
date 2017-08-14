class EditBookColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :isbn, :integer
  end
end
