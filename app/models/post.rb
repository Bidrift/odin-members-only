class Post < ApplicationRecord
  belongs_to :users

  validates :title, :body, presence: true
  validates :title, uniqueness: true, length: { in: 4..25}
  validates :body, length: { maximum: 250 }
end
