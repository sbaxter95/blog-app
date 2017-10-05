class Comment < ApplicationRecord
	validates :commenter, :body, :location, :email_address, presence: true
	validates :commenter, length: {minimum: 4, maximum:30}
	validates :location, length: {minimum: 4, maximum:30}
end
