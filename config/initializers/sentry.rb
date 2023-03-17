Sentry.init do |config|
  config.dsn = ENV.fetch("SENTRY_DSN")
  config.breadcrumbs_logger = [:active_support_logger, :http_logger]
  config.enabled_environments = %w[production staging]
  config.transport.open_timeout = 10
  config.transport.timeout = 10

  config.traces_sampler = lambda do |sampling_context|
    unless sampling_context[:parent_sampled].nil?
      next sampling_context[:parent_sampled]
    end

    transaction_context = sampling_context[:transaction_context]

    op = transaction_context[:op]
    transaction_name = transaction_context[:name]

    case op
    when /http/
      case transaction_name
      when /health_check/
        0.0
      when /api/
        0.2
      else
        0.1
      end
    else
      0.0
    end
  end
end
