# app/bot/listen.rb
#
require "facebook/messenger"
include Facebook::Messenger

Rails.logger.info "listen: access token is '#{ENV['ACCESS_TOKEN'].inspect}'"

Facebook::Messenger::Subscriptions.subscribe(
  :access_token => ENV["ACCESS_TOKEN"]
)

# Bot.on :message do |message|
#   Rails.logger.info "got your message! - #{message.inspect}"
# end

# message.id          # => 'mid.1457764197618:41d102a3e1ae206a38'
# message.sender      # => { 'id' => '1008372609250235' }
# message.sent_at     # => 2016-04-22 21:30:36 +0200
# message.text        # => 'Hello, bot!'
#
Bot.on :message do |message|
  Rails.logger.info "got your message = #{message.inspect}"
  Bot.deliver(
    {
      :recipient => message.sender,
      :message => { :text => message.text + ": Hello human! from the bot!" }
    },
    :access_token => ENV["ACCESS_TOKEN"]
  )
end
