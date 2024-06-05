class Hive < ApplicationRecord
  belongs_to :user

  validates :name, length: { minimum: 6 }
end
