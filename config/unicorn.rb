application = "stay_visualize"
 
worker_processes = 2
working_directory "/home/#{application}"
 
listen "/var/run/unicorn/unicorn_#{application}.sock"
pid "/var/run/unicorn/unicorn_#{application}.pid"
 
stderr_path "/home/#{application}/log/unicorn.stderr.log"
stdout_path "/home/#{application}/log/unicorn.stdout.log"
 
preload_app true
