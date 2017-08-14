class Book < ApplicationRecord
  belongs_to :title
  belongs_to :comment
  belongs_to :translator
end
