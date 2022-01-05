class Post < ApplicationRecord
  belongs_to :user

  validates :message, length: { minimum: 10 }
end
