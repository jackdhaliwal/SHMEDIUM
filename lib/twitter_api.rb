class TwitterApi
    def self.our_public_tweets
        client.user_timeline('@jdhaliwal24', count: 5, exclude_replies: true, include_rts: false)
    end
    

    
    def self.client
        Twitter::REST::Client.new do |config|
        config.consumer_key = 'mFMI9WWyL2rwYKFtjwcVPi5yB'
        config.consumer_secret = 'ogekcYCWY0DFSRkEql0kPzkEEaKB0MX0T3p689jckmEbVkCr6F'
        config.access_token = '1897397066-oaNNTQUIsHhYF0MX7swhNO035QfFT5QnufWREAG'
        config.access_token_secret = 'HKG1CQcYOGQcLjtO7WITpNUr6bEbh6hiHq1HBoyDoRLMg'
        end
    end
end

