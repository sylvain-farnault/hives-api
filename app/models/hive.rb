class Hive < ApplicationRecord

  validates :name, length: { minimum: 6 }
end
