class Table < ApplicationRecord
  validates :title, presence: true
end
