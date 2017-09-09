require 'etc'
require 'fileutils'
require 'pathname'
require 'tmpdir'

# this is a comment in 

DOTFILEDIR = File.dirname(File.expand_path(__FILE__))

TMPDIR = Dir.tmpdir #File.join(Dir.home,"tmp")

USER_BIN = File.join(Dir.home, "bin")

def backup(src)
  time = Time.now.strftime "%Y%m%d%H%M%S"
  dst = [src,time,"bak"].join(".")
  FileUtils.cp src, dst
end

task :default do
  puts "run 'rake -T' to list available tasks"
end


task :tmpdir do
  sh "mkdir #{TMPDIR}" unless File.exists?(TMPDIR)
end


#
#
#
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

#
#
#
namespace :git do
  desc "reset origin to use native git protocol"
  task :reset do
    sh "git remote rm origin"
    sh "git remote add origin git@github.com:mgreenly/dotfiles.git"
    sh "git config master.remote origin"
    sh "git config master.merge refs/heads/master"
  end
end

#
# $HOME/.*
#
namespace :home do

  desc "copy repository dot files into home directory"
  task :dotfiles do
    files = Dir.glob("home/*", File::FNM_DOTMATCH) - ['home/.', 'home/..']
    files.each do |file|
      next if File.directory?(file)
      next if File.basename(file) == '.vimrc'
      next if File.extname(file) == ".swp"
      src = File.join(Dir.pwd, file)
      dst = File.join(Dir.home, file.split('/')[1..-1].join('/'))
      if File.exists?(dst)
        src_sha1 = `sha1sum #{src} | cut -d' ' -f1`
        dst_sha1 = `sha1sum #{dst} | cut -d' ' -f1`
        if src_sha1 != dst_sha1
          puts "skipping #{dst}"
          next
        end
      end
      puts "linking  #{dst}"
      system "rm -f #{dst} && ln #{src} #{dst}"
    end
  end

  desc "configure ssh"
  task :ssh => "secrets:decrypt" do
    sh  "rsync -av -L --delete --link-dest #{DOTFILEDIR}/home/.ssh/ #{DOTFILEDIR}/home/.ssh $HOME/"
  end

  task :gnupg => "secrets:decrypt" do
    sh  "rsync -av -L --delete --link-dest #{DOTFILEDIR}/home/.gnupg/ #{DOTFILEDIR}/home/.gnupg $HOME/"
  end

  desc "aws credentials"
  task :aws do
    sh  "rsync -av -L --delete --link-dest #{DOTFILEDIR}/home/.aws/ #{DOTFILEDIR}/home/.aws $HOME/"
  end

  desc "configure bash"
  task :bash do
    sh "cp -f home/.profile $HOME/.profile"
    #sh "cp -f home/.bash_logout $HOME/.bash_logout"
    sh "cp -f home/.bashrc $HOME/.bashrc"
    puts "bingo"
  end

  desc "install ruby gem configuration files"
  task :ruby do
    sh "cp -f home/.gemrc $HOME/.gemrc"
    sh "cp -f home/.rspec $HOME/.rspec"
  end

  desc "configure tmux"
  task :tmux do
    sh "cp -f home/.tmux.conf $HOME/.tmux.conf"
  end

  desc "configure git"
  task :git do
    sh "cp -f home/.gitconfig $HOME/.gitconfig"
    sh "cp -f home/.gitignore $HOME/.gitignore"
  end
end


#
# NODE
#
namespace :node do
  desc "remove node install and configuration files"
  task :clean do
    sh "rm -rf $HOME/.opt/node"
    sh "rm -rf #{TMPDIR}/node*"
  end

  desc "install node"
  task :install => [:tmpdir] do
    next if File.exists?(File.join(Dir.home, '.opt', 'node'))
    #node_ver = "6.11.2"
    node_ver = "8.2.1"
    unless File.exists?("#{TMPDIR}/node-v#{node_ver}.tar.gz")
      sh "curl -s http://nodejs.org/dist/v#{node_ver}/node-v#{node_ver}.tar.gz > #{TMPDIR}/node-v#{node_ver}.tar.gz"
    end
    unless File.exists?("#{TMPDIR}/node-v#{node_ver}")
      sh "cd #{TMPDIR} && tar xvzf node-v#{node_ver}.tar.gz"
    end
    sh "cd #{TMPDIR}/node-v#{node_ver} && ./configure --prefix=$HOME/.opt/node"
    sh "cd #{TMPDIR}/node-v#{node_ver} && make -j 8"
    sh "cd #{TMPDIR}/node-v#{node_ver} && make install"
  end

  desc "install common node packages"
  task :packages => ['node:install'] do
    unless File.exists?(File.join(Dir.home, ".opt", "node", "bin", "coffee"))
      sh "$HOME/.opt/node/bin/npm install -g coffee-script"
    end
    unless File.exists?(File.join(Dir.home, ".opt", "node", "bin", "uglifyjs"))
      sh "$HOME/.opt/node/bin/npm install -g uglify-js"
    end
    unless File.exists?(File.join(Dir.home, ".opt", "node", "bin", "lessc"))
      sh "$HOME/.opt/node/bin/npm install -g less"
    end
    unless File.exists?(File.join(Dir.home, ".opt", "node", "bin", "bower"))
      sh "$HOME/.opt/node/bin/npm install -g bower"
    end
    unless File.exists?(File.join(Dir.home, ".opt", "node", "bin", "grunt"))
      sh "$HOME/.opt/node/bin/npm install -g grunt-cli"
    end
    unless File.exists?(File.join(Dir.home, ".opt", "node", "bin", "babel"))
      sh "$HOME/.opt/node/bin/npm install -g babel"
    end
  end
end

namespace :ocaml do
  desc "copy .ocamlinit"
  task :config do
    sh "cp -f home/.ocamlinit $HOME/.ocamlinit"
  end
end

#
# IDRIS
#
namespace :idris do

  idris_ver = [0, 9, 19].join('.')

  desc "configure idris preferences"
  task :config => [:tmpdir] do
  end

  desc "remove idris install and configuration files"
  task :clean do
    sh "rm -rf $HOME/.opt/idris"
    sh "rm -rf #{TMPDIR}/idris"
  end

  desc "install idris #{idris_ver}"
  task :install => [:tmpdir, 'idris:config'] do
    unless File.exists?("#{TMPDIR}/idris")
      sh "cd #{TMPDIR} && git clone git@github.com:idris-lang/Idris-dev.git idris"
    end
    sh "cd #{TMPDIR}/idris && git pull origin master"
    sh "cd #{TMPDIR}/idris && git checkout tags/v#{idris_ver}"
    sh "cd #{TMPDIR}/idris && cabal sandbox init"
    sh "cd #{TMPDIR}/idris && cabal update"
    sh "cd #{TMPDIR}/idris && cabal install --prefix=$HOME/.opt/idris"
  end
end


namespace :rust do
  desc "remove rust"
  task :clean do
    sh "curl -s https://static.rust-lang.org/rustup.sh | sh -s -- --uninstall --prefix=$HOME/.opt/rust"
  end

  desc "install rust"
  task :install do
    sh "curl -s https://static.rust-lang.org/rustup.sh | sh -s -- --prefix=$HOME/.opt/rust"
  end
end

namespace :home do
  task :opt do
    sh "mkdir -p #{File.join(Dir.home, '.opt')}"  #command
  end
end


namespace :golang do
  GO_VERSION = "1.9"
  GO_OS = "linux"
  GO_ARCH = "amd64"

  desc "remove golang"
  task :clean do
    sh "rm -f #{TMPDIR}/go*.tar.gz"
    sh "rm -rf $HOME/.opt/go"
  end

  desc "install golang #{GO_VERSION}"
  task :install => ['home:opt'] do
    dirname = "go#{GO_VERSION}.#{GO_OS}-#{GO_ARCH}"
    tarfile = [dirname, "tar.gz"].join(".")
    tarpath = File.join(TMPDIR, tarfile)
    unless File.exists?(tarpath)
      sh "curl -L http://golang.org/dl/#{tarfile} > #{tarpath}"
    end
    unless File.exists?(File.join(Dir.home,".opt", "go"))
      sh "cd $HOME/.opt && tar -xvf #{tarpath}"
    end
  end
end


namespace :purescript do
  desc "remove purescript files"
  task :clean do
    sh "npm uninstall -g purescript"
  end
  desc "install current purescript"
  task :install => ['node:install'] do
    sh "npm install -g purescript pulp bower"
  end
end


#
# GAUCHE
#
namespace :gauche do
  gauche_ver  = [0, 9, 4].join('.')
  gauche_tar  = "Gauche-#{gauche_ver}.tgz"
  gauche_dir  = File.join(TMPDIR, File.basename(gauche_tar, ".tgz"))

  task :source => [:tmpdir] do
    path = "#{TMPDIR}/#{gauche_tar}"
    unless File.exists?(path)
      sh "curl -L http://prdownloads.sourceforge.net/gauche/#{gauche_tar} > #{TMPDIR}/#{gauche_tar}"
    end
    unless File.exists?(gauche_dir)
      sh "cd #{TMPDIR} && tar xvzf #{gauche_tar}"
    end
  end

  desc "remove gauche install and configuration files"
  task :clean do
    sh "rm -rf #{TMPDIR}/Gauche*"
    sh "rm -rf $HOME/.opt/gauche"
  end

  desc "configure gauche preferences"
  task :config do
  end

  desc "install gauche"
  task :install => ["gauche:source", 'gauche:config'] do
    sh "cd #{gauche_dir} && ./configure --prefix=$HOME/.opt/gauche"
    sh "cd #{gauche_dir} && make"
    sh "cd #{gauche_dir} && make install"
  end
end


#
# CHIBI
#
namespace :chibi do

  chibi_ver = "0.7.3"

  desc "configure chibi preferences"
  task :config => [:tmpdir] do
  end

  desc "remove chibi install and configuration files"
  task :clean do
    sh "rm -rf $HOME/.opt/chibi"
    sh "rm -rf #{TMPDIR}/chibi*"
  end

  desc "install chibi"
  task :install => [:tmpdir, 'chibi:config'] do
    unless File.exists?("#{TMPDIR}/chibi-scheme")
      sh "cd #{TMPDIR} && git clone git@github.com:ashinn/chibi-scheme.git"
    end
    sh "cd #{TMPDIR}/chibi-scheme && git pull origin master"
    sh "cd #{TMPDIR}/chibi-scheme && git checkout tags/#{chibi_ver}"
    sh "cd #{TMPDIR}/chibi-scheme && make PREFIX=$HOME/.opt/chibi"
    sh "cd #{TMPDIR}/chibi-scheme && make PREFIX=$HOME/.opt/chibi install"
  end
end


#
# GAMBIT
#
namespace :gambit do

  gambc_ver = "v4.7.8"

  desc "configure gambit preferences"
  task :config => [:tmpdir] do
  end

  desc "remove gambit install and configuration files"
  task :clean do
    sh "rm -rf $HOME/.opt/gambit"
    sh "rm -rf #{TMPDIR}/gambit"
  end

  desc "install gambit #{gambc_ver}"
  task :install => [:tmpdir, 'gambit:config'] do
    unless File.exists?("#{TMPDIR}/gambit")
      sh "cd #{TMPDIR} && git clone https://github.com/feeley/gambit.git"
    end
    sh "cd #{TMPDIR}/gambit && git checkout tags/#{gambc_ver}"
    sh "cd #{TMPDIR}/gambit && ./configure --enable-single-host --enable-c-opts --enable-gcc-opts --prefix=$HOME/.opt/gambit"
    sh "cd #{TMPDIR}/gambit && make bootstrap"
    sh "cd #{TMPDIR}/gambit && make bootclean"
    sh "cd #{TMPDIR}/gambit && make -j8"
    sh "cd #{TMPDIR}/gambit && make install"
  end
end

namespace :clojure do
  desc "remove clojure"
  task :clean do
    sh "rm -rf #{Dir.home}/.local/bin/lein"
    sh "rm -rf #{Dir.home}/.lein"
  end

  desc "install clojure"
  task :install do
    unless File.exists?(File.join(Dir.home, ".local", "bin", "lein"))
      sh "curl -s https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein > $HOME/.local/bin/lein"
      sh "chmod +x $HOME/.local/bin/lein"
      sh "yes | #{Dir.home}/.local/bin/lein upgrade"
    end
  end
end

namespace :erlang do
  erl_ver = "18.0"

  desc "remove erlang"
  task :clean do
    sh "rm -rf #{Dir.home}/.kerl"
    sh "rm -rf #{Dir.home}/opt/erlang"
    sh "rm -f #{Dir.home}/opt/bin/kerl"
  end

  desc "install erlang #{erl_ver}"
  task :install => [] do
    kerl = Pathname.new(File.join(Dir.home, %w[.local bin kerl ]))
    erlang_dir = Pathname.new(File.join(Dir.home, %w[.opt erlang]))
    unless kerl.exist?
      sh "mkdir -p #{kerl.dirname}"
      sh "curl -Ls https://raw.githubusercontent.com/spawngrid/kerl/master/kerl > #{kerl}"
      sh "chmod +x #{kerl}"
    end
    sh "#{kerl} update releases"
    sh "#{kerl} build #{erl_ver} #{erl_ver}"
    sh "#{kerl} install #{erl_ver} #{erlang_dir}"
  end
end

#
# AWS
#
namespace "aws" do
  src_dir       = TMPDIR
  bin_dir       = File.join(Dir.home, ".opt")

  #
  # CLI
  #
  namespace "cli" do
    bundle_file = "awscli-bundle.zip"
    bundle_dir  = File.basename(bundle_file,".zip")
    bundle_url  = "https://s3.amazonaws.com/aws-cli/#{bundle_file}"
    bundle_path = File.join(src_dir, bundle_file)
    old_dir = Dir.pwd

    desc "remove aws command line interface"
    task :clean do
      sh "rm -rf #{src_dir}/awscli*"
      sh "rm -rf #{bin_dir}/awscli*"
    end

    desc "install aws command line interface"
    task :install => [:src_dir] do
      begin
        sh "mkdir -p #{src_dir}" unless File.exists?(src_dir)
        Dir.chdir src_dir
        unless File.exists?(bundle_file)
          sh "curl -L #{bundle_url} > #{bundle_file}"
        end
        unless Dir.exists?(File.basename(bundle_dir))
          sh "unzip #{bundle_file}"
        end
        unless Dir.exists?(File.join(bin_dir, "aws"))
          sh "./awscli-bundle/install -i #{bin_dir}/awscli"
        end
        puts %Q{use ". #{bin_dir}/awscli/bin/activate" to add tools to env}
      ensure
        Dir.chdir old_dir
      end
    end
  end

end


#
# ELIXIR
#
namespace :elixir do
  elixir_ver = "v1.0.5"
  elixir_dir = File.join(TMPDIR, "elixir")

  desc "remove elixir"
  task :clean => [] do
    sh "rm -rf $HOME/.opt/elixir"
  end

  task :source => [:tmpdir] do
    unless File.exists?(elixir_dir)
      sh "cd #{TMPDIR} && git clone https://github.com/elixir-lang/elixir.git"
    end
    sh "cd #{elixir_dir} && git fetch origin master"
  end

  desc "install elixir #{elixir_ver}"
  task :install => ["elixir:source"] do
    sh "cd #{elixir_dir} && git checkout tags/#{elixir_ver}"
    sh "cd #{elixir_dir} && make clean test"
    sh "cd #{elixir_dir} && make install PREFIX=$HOME/.opt/elixir"
  end
end


#
# CHICKEN
#
namespace :chicken do
  chick_ver = [4, 10, 0]
  abc_ver = chick_ver[0..2].join('.')
  abcx_ver = chick_ver.join('.')

  task :source => [:tmpdir] do
    path = "#{TMPDIR}/chicken-#{abcx_ver}.tar.gz"
    unless File.exists?(path)
      puts "fetching #{path}"
      sh "curl -L http://code.call-cc.org/releases/#{abc_ver}/chicken-#{abcx_ver}.tar.gz > #{TMPDIR}/chicken-#{abcx_ver}.tar.gz"
    end
    unless File.exists?("tmp/chicken-#{abcx_ver}")
      sh "cd #{TMPDIR} && tar xvzf chicken-#{abcx_ver}.tar.gz"
    end
  end

  desc "remove chicken install and configuration files"
  task :clean do
    sh "rm -rf #{TMPDIR}/chicken*"
    sh "rm -rf $HOME/.opt/chicken"
    sh "rm -f $HOME/.csirc"
  end

  desc "configure chicken preferences"
  task :config do
    sh "rm -f $HOME/.csirc && ln home/.csirc $HOME/.csirc"
  end

  desc "install chicken"
  task :install => ["chicken:source", 'chicken:config'] do
    sh "cd #{TMPDIR}/chicken-#{abcx_ver} && make PLATFORM=linux PREFIX=$HOME/.opt/chicken"
    sh "cd #{TMPDIR}/chicken-#{abcx_ver} && make PLATFORM=linux PREFIX=$HOME/.opt/chicken install"
    sh "$HOME/.opt/chicken/bin/chicken-install readline test"
  end
end

#
# vim
#
namespace :vim do

  desc "remove vim config"
  task :clobber do
    sh "rm -rf $HOME/.vim"
    sh "rm -rf $HOME/.vimrc"
    sh "rm -rf tmp/"
  end


  desc "remove vim plugins"
  task :clean do
    sh "rm -rf $HOME/.vim/bundle/*"
  end

  desc "install base/pathogen/sensible/surround/commentary/replacewithregister/indent/sortmotion/ruby/coffee/pgsql/hdevtools/hoogle"
  task :favs => [ 'vim:base', 
                  'vim:pathogen', 
                  'vim:sensible', 
                  'vim:surround', 
                  'vim:commentary',
                  'vim:replacewithregister',
                  'vim:eunuch',
                  'vim:indent', 
                  'vim:sortmotion',
                ]
 
  desc "install vim configuration files"
  task :base do
    #
    # hardlink the files from the dotfiles project folder to there installed locations.  Helps to ensure if I mistakenly
    # make changes in the actual file they're reflected in the project folder.
    sh "rsync -av --delete --link-dest #{Dir.pwd}/home/.vim/ #{Dir.pwd}/home/.vim/ $HOME/.vim"
    sh "link #{Dir.pwd}/home/.vimrc $HOME/.vimrc"
  end

  desc "install vim-pathogen"
  task :pathogen do
    sh "mkdir -p ~/.vim/autoload"
    sh "mkdir -p ~/.vim/bundle"
    sh "curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim"
  end

  desc "install vim-sensible"
  task :sensible do
    sh "cd $HOME/.vim/bundle && git clone --depth=1 https://github.com/tpope/vim-sensible.git"
  end

  desc "install vim-nix"
  task :nix do
    sh "mkdir -p $HOME/.vim/bundle"
    sh "cd $HOME/.vim/bundle && git clone --depth=1 https://github.com/LnL7/vim-nix.git"
  end


  desc "install vim-elm"
  task :elm do
    sh "mkdir -p $HOME/.vim/bundle"
    sh "cd $HOME/.vim/bundle && git clone --depth=1 git@github.com:ElmCast/elm-vim.git"
  end

  desc "install enuch.vim"
  task :eunuch do
    sh "mkdir -p $HOME/.vim/bundle"
    sh "cd $HOME/.vim/bundle && git clone --depth=1 https://github.com/tpope/vim-eunuch.git"
  end

  desc "install vim-syntastic"
  task :syntastic do
    sh "cd $HOME/.vim/bundle && git clone --depth=1 https://github.com/scrooloose/syntastic.git"
  end

  desc "install vim-coffee-script"
  task :coffee do
    sh "cd $HOME/.vim/bundle && git clone --depth=1 git@github.com:kchmck/vim-coffee-script.git"
  end

  desc "install vim-pgsql"
  task :pgsql do
    sh "cd $HOME/.vim/bundle && git clone --depth=1 git@github.com:exu/pgsql.vim.git"
  end

  desc "install vim-hdevtools"
  task :hdevtools do
    sh "cd $HOME/.vim/bundle && git clone --depth=1 git@github.com:bitc/vim-hdevtools.git"
  end

  desc "install vim-hoogle"
  task :hoogle do
    sh "cd $HOME/.vim/bundle && git clone --depth=1 git@github.com:Twinside/vim-hoogle.git"
  end

  desc "isntall vim-toml"
  task :toml do
    sh "cd $HOME/.vim/bundle && git clone --depth=1 git@github.com:cespare/vim-toml.git"
  end

  desc "install vim-purescript"
  task :purescript do
    sh "cd $HOME/.vim/bundle && git clone --depth=1 git@github.com:raichoo/purescript-vim.git"
  end

  desc "install vim-slime"
  task :slime do
    sh "cd $HOME/.vim/bundle && git clone --depth=1 git@github.com:jpalardy/vim-slime.git"
  end

  desc "install rust.vim"
  task :rust do
    sh "cd $HOME/.vim/bundle && git clone --depth=1 https://github.com/rust-lang/rust.vim.git"
  end

  desc "install vim-go"
  task :golang do
    sh "cd $HOME/.vim/bundle && git clone --depth=1 git@github.com:fatih/vim-go.git"
  end

  desc "install typescript-vim"
  task :typescript do
    sh "cd $HOME/.vim/bundle && git clone --depth=1 https://github.com/leafgarland/typescript-vim.git"
  end

  desc "install vim-ruby"
  task :ruby do
    #sh "cd $HOME/.vim/bundle && git clone --depth=1 git@github.com:vim-ruby/vim-ruby.git"
    sh "cd $HOME/.vim/bundle && git clone --depth=1 https://github.com/vim-ruby/vim-ruby.git"
  end

  desc "install ghcmod.vim"
  task :ghcmod do
    sh "cd $HOME/.vim/bundle && git clone --depth=1 git@github.com:eagletmt/ghcmod-vim.git"
  end

  desc "install vimproc.vim"
  task :vimproc do
    sh "cd $HOME/.vim/bundle && git clone --depth=1 git@github.com:Shougo/vimproc.vim.git"
    sh "cd $HOME/.vim/bundle/vimproc.vim && make"
  end

  desc "install surround.vim"
  task :surround do
    sh "cd $HOME/.vim/bundle && git clone --depth=1 https://github.com/tpope/vim-surround.git"
  end

  desc "install commentary.vim"
  task :commentary do
    sh "cd $HOME/.vim/bundle && git clone --depth=1 https://github.com/tpope/vim-commentary.git"
  end

  desc "install replace with register"
  task :replacewithregister do
    sh "cd $HOME/.vim/bundle && git clone --depth=1 https://github.com/vim-scripts/ReplaceWithRegister.git"
  end

  desc "install vim-sort-motion"
  task :sortmotion do
    sh "cd $HOME/.vim/bundle && git clone --depth=1 https://github.com/christoomey/vim-sort-motion.git"
  end

  desc "install vim-indent"
  task :indent do
    sh "cd $HOME/.vim/bundle && git clone --depth=1 https://github.com/michaeljsmith/vim-indent-object.git"
  end

  desc "install vim-haskell-indent"
  task :haskell_indent do
    sh "cd $HOME/.vim/bundle && git clone --depth=1 git@github.com:itchyny/vim-haskell-indent.git"
  end

end




def bash(command)
  Kernel.system %Q{ echo "#{command.gsub('"', '\"')}" | bash -s }
end

#
# RVM
#
desc "install rvm"
task :rvm => [ "home:bash" ] do
  if Kernel.system('which rvm >> /dev/null')
    puts "rvm already installed"
  else
    bash %q{
      curl -L https://get.rvm.io | bash -s stable
      source $HOME/.rvm/scripts/rvm
      rvm autolibs disable
      rvm rvmrc warning ignore all.rvmrcs
    }
  end
end


#
# RUBY
#
desc "install ruby"
task :ruby => ["home:ruby", "rvm"] do
  ["2.1.0-p0"].each do |ruby|
    if bash %Q[source $HOME/.rvm/scripts/rvm && rvm list | grep '#{ruby}' >> /dev/null]
      puts "ruby-#{ruby} is already installed."
    else
      bash %[source $HOME/.rvm/scripts/rvm && env LESS='QUIT-AT-EOF' rvm install #{ruby}]
    end
  end
end

#
#
#
namespace :keepass do
  desc "link dropbox keepass to dotfiles keepass"
  task :update do
    dropbox_keepass_file = File.join(Dir.home, "Dropbox", "keys.kdbx")
    dotfile_keepass_file = File.expand_path(File.join("secrets", "keys.kdbx") , File.join(__FILE__, ".."))
    puts dropbox_keepass_file
    puts dotfile_keepass_file
    if File.exists?(File.dirname(dropbox_keepass_file))
      FileUtils.rm_rf(dotfile_keepass_file)
      FileUtils.ln_sf(dropbox_keepass_file, dotfile_keepass_file)
    end
  end
end
