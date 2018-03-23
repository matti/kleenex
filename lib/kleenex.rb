require 'database_cleaner'
require 'sidekiq/api'

def kleenex!
  retryset = Sidekiq::RetrySet.new
  retryset.clear

  for queue in Sidekiq::Queue.all
    queue.clear
  end

  Sidekiq::Stats.new.reset

  DatabaseCleaner.strategy = :truncation
  DatabaseCleaner.clean
end
