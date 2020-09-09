class Article < ApplicationRecord
  belongs_to :user
  enum status: %i(published draft)
end
