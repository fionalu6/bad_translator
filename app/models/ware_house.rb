class WareHouse < ApplicationRecord
  belongs_to :translator
  belongs_to :book
end
