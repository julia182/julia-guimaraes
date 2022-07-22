Before do
  start_driver
  manage.timeouts.implicit_wait = 5
end

After do
  # terminate_app
  quit_driver
end