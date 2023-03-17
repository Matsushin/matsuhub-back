namespace :test_batch do
  desc 'バッチのテスト実行用'
  task run: :environment do
    test_batch(dry_run: false)
  end

  task dry_run: :environment do
    test_batch(dry_run: true)
  end

  def test_batch(options = {})
    puts "Start test batch."
    Rails::logger::error("[ERROR] logger error test.")
    Rails::logger::debug("[ERROR] logger debug test.")
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