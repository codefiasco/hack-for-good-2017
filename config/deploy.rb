set :application, "refind"
set :repo_url, "https://github.com/CodeFiasco/hack-for-good-2017.git"

set :deploy_to, '/home/deploy/refind'

append :linked_files, "config/database.yml", "config/secrets.yml"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "vendor/bundle", "public/system", "public/uploads"
