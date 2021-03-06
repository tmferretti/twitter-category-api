class Category < ApplicationRecord
	has_many :tweets
	
	def as_json
		{
			id: id,
			name: name,
			hashtag: hashtag,
			tweets: tweets.as_json
		}
	end
end
