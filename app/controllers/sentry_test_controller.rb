class SentryTestController < ApplicationController
  def index
    #Sentry.capture_message("sentry test")
    aaa
    render plain: "sentry test"
  end
end