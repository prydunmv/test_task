class Article < ApplicationRecord
  belongs_to :user
  enum status: %i(published draft)
  has_one_attached :avatar
  has_many_attached :images
  has_rich_text :body

  validates :unique_key, presence: true
  validates :unique_key, uniqueness: true
end
