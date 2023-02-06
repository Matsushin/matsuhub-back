class HealthCheckController < ApplicationController

  def index
    # user_count = User.count
    # render plain: "User count: #{user_count}"
    Rails::logger::debug('=== index ===')
    Rails::logger::debug(ENV.fetch('MATSUHUB_TEST'))
    Rails::logger::debug(ENV.fetch('MATSUHUB_TEST2'))
    render plain: "OK! MATSUHUB_TEST=#{ENV.fetch('MATSUHUB_TEST')}; MATSUHUB_TEST2=#{ENV.fetch('MATSUHUB_TEST2')}"
  end
end
