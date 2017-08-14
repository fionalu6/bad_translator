class Book < ApplicationRecord
  # relations
  has_many :ware_houses
  has_many :translators, through: :ware_houses

  # validation
  validates :name, :book_title, :isbn, presence: { message: "%{value} 是必填欄位喔！"}
  validates :isbn,   :isbn_format => true
  # validates :isbn, length: { in: 10..13, message: "ISBN 須為10-13碼喔！" }
end
