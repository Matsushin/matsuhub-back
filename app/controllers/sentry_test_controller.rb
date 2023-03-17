class SentryTestController < ApplicationController
  def index
    Sentry.capture_message("sentry test")
    render plain: "sentry test"
  end
end