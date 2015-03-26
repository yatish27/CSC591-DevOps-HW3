web1:  bundle exec thin start -p 5001
web2:  bundle exec thin start -p 5002
proxy: haproxy -f config/haproxy.cfg
worker: sidekiq -r ./worker.rb