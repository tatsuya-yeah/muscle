class AddYoutubeUrlToTweets < ActiveRecord::Migration[6.0]
  def change
    add_column :tweets, :youtube_url, :string
  end
end
