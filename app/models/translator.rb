class Translator < ApplicationRecord
  has_many :ware_houses
  has_many :books, through: :ware_houses
end
