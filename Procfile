web: bundle exec rails server thin -p $PORT -e $RACK_ENV
sidekiq: bundle exec sidekiq -e production -C config/sidekiq.yml
