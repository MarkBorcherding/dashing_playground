

guard 'process', name: 'thin',
                 command: 'bundle exec thin --rackup config.ru start --port 3030',
                 stop_signal: 'TERM' do
  watch 'Gemfile.lock'
  watch 'config.ru'
  watch  %r{jobs/.*\.rb}
  watch  %r{lib/.*\.rb}
end

guard 'livereload' do
  watch(%r{widgets/.+\.(erb|haml|slim)})
  watch(%r{public/.+\.(css|js|html)})
  watch(%r{assets/.+\.(scss|coffee|css|js|html)})
  watch(%r{dashboards/.+\.(erb|slim|html)})
end
