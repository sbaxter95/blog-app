class Comment < ApplicationRecord
	validates :commenter, :body, :location, :email_address, presence: true
end
