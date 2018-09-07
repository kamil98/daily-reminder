class MessagesController < ApplicationController
  require "facebook/messenger"
  include Facebook::Messenger

  def create
    Facebook::Messenger::Subscriptions.subscribe(access_token: ENV["ACCESS_TOKEN"])

    Bot.on :message do |message|
      puts "got your message!"
    end
  end
end
