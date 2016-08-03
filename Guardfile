

guard 'process', name: 'thin',
                 command: 'bundle exec thin --rackup config.ru start --port 3030',
                 stop_signal: 'TERM' do
  watch 'Gemfile.lock'
  watch  %r{jobs/.*\.rb}
  watch  %r{lib/.*\.rb}
end
