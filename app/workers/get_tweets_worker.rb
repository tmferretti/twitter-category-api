require 'sidekiq-scheduler'

class GetTweetsWorker
  include Sidekiq::Worker

  def perform
    # grab tweets from categories

    # save tweets to database
  end
end
