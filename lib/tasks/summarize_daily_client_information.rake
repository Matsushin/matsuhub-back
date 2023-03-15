namespace :summarize_daily_client_information do
  desc '各会員情報を集計する'
  task run: :environment do
    summarize_daily_client_information(dry_run: false)
  end

  task dry_run: :environment do
    summarize_daily_client_information(dry_run: true)
  end

  def summarize_daily_client_information(options = {})
    puts "Start summarize daily user information."
    ActiveRecord::Base.transaction do
      if options[:dry_run]
        puts 'Rollback.'
        raise ActiveRecord::Rollback
      else
        puts 'Commit.'
      end
    end

    puts 'Completed.'
  end
end