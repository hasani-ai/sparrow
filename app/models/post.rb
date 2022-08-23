class Post < ApplicationRecord
  has_rich_text :body

  validates :author, presence: true
end
