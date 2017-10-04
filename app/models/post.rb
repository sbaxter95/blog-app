class Post < ApplicationRecord
	validates :title, :body, :author, :category, :image, presence: true
	validates :author, length: {minimum: 4, maximum:30}
	validates :category, length: {minimum: 1, maximum:20}
	validates :title, length: {minimum: 5, maximum:25}
	validates :image, format: {with: URI.regexp}
	has_many :comments
end
