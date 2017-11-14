# app/bot/listen.rb
#
require "facebook/messenger"
include Facebook::Messenger

Logger.info "listen: access token is '#{ENV['ACCESS_TOKEN'].inspect}'"

Facebook::Messenger::Subscriptions.subscribe(
  :access_token => ENV["ACCESS_TOKEN"]
)

Bot.on :message do |message|
  Logger.info "got your message! - #{message.inspect}"
end
