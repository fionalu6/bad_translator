class Translator < ApplicationRecord
  validates :name, :book_title, :isbn, presence: true
  validates :isbn, length: { maximum: 13}
end
