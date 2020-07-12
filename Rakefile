require 'etc'
require 'fileutils'
require 'pathname'
require 'tmpdir'

DOTFILEDIR = File.dirname(File.expand_path(__FILE__))
TMPDIR = Dir.tmpdir
USER_BIN = File.join(Dir.home, '.local', 'bin')

task :default do
  puts "run 'rake -T' to list available tasks"
end

namespace :secrets do
  file "secrets.tar.gz.asc" => FileList["secrets/**/*", "secrets/**/.*"] do |task|
    exec %{tar -zchv secrets | gpg --yes --symmetric --cipher-algo AES256 --armor -o secrets.tar.gz.asc -}
  end

  desc "encrypt secrets/ to secrets.tar.gz.asc"
  task :encrypt => "secrets.tar.gz.asc"


  desc "decrypt secrets.tar.gz.asc to secrets/"
  task :decrypt do
    next if File.exists?("secrets") && File.mtime("secrets") > File.mtime("secrets.tar.gz.asc")
    exec %{rm -rf secrets && gpg --decrypt  secrets.tar.gz.asc | tar -xvzf - && touch secrets}
  end
end
