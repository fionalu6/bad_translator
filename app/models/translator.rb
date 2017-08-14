class Translator < ApplicationRecord
  validates :name, :book_title, :isbn, presence: { message: "%{value} 是必填欄位喔！"}
  validates :isbn, length: { in: 10..13, message: "ISBN 須為10-13碼喔！" }
end
