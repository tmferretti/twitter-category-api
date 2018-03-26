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

	def self.get_daily_tweets
		self.all.each do |category|
			client.search("#{category.name} -rt", lang: "en").first(10).each do |tweet|
				tweet1 = Tweet.create(
					user_name: tweet.user.name,
					screen_name: tweet.user.screen_name,
					text: tweet.full_text,
					posted_at: tweet.created_at,
					category_id: category.id
				)
			end
		end
		p 'got daily tweets'
	end
end
