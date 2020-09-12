class Article < ApplicationRecord
  belongs_to :user
  enum status: %i(published draft)

  validates :unique_key, presence: true
  validates :unique_key, uniqueness: true
end
