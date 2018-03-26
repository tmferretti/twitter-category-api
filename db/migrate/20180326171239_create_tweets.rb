class CreateTweets < ActiveRecord::Migration[5.1]
  def change
    create_table :tweets do |t|
      t.string :screen_name
      t.string :text
      t.datetime :posted_at

      t.timestamps
    end
  end
end
