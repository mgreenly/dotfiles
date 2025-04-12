ls
sudo btrfs balance status /mnt/store
sudo btrfs balance start --bg /mnt/store
sudo btrfs filesystem show
sudo btrfs balance status /mnt/store

sudo smartctl -a /dev/sdb | less
sudo smartctl -a /dev/sda
clear
sudo smartctl -a /dev/sdb
sudo smartctl -a /dev/sdc
sudo btrfs device delete /dev/sdc /mnt/store
clear; cd /home/mgreenly/Projects; ls -lha; echo
sudo lsblk -o NAME,MODEL,SERIAL,SIZE,STATE -d
lsblk
sudo btrfs filesystem show
sudo vim /etc/fstab 
sudo vi /etc/fstab 
clear
ls
sudo btrfs filesystem usage
sudo btrfs filesystem usage /mnt/store
sudo btrfs scrub start /mnt/store
sudo btrfs scrub status /mnt/store
exit
mgmux
exit
clear; cd /home/mgreenly/Projects; ls -lha; echo
exit
which rg
exit
go version
vim shell.nix 
exit
go version
fg
ls
vim shell.nix 
exit
ls -lha
go version
exit
sudo su
zig --version
zig version
cd ~/.local/
ls
ls -lha
ln --help
clear
ls
ls -lha
ln -sf zig-linux-x86_64-0.14.0/ zig
ls -lha
zig --version
clear
ls
rustc --version
clear
ls
cd ~/Projects/
ls
mkdir ruststuff
mkdir zigstuff
ls
ls -lha
cd opsctl/
ls
cd ..
rm -rf opsctl/
ls -lha
cd nixdemo/
ls
cd ..
cd nixdemo/
ls -lha
cat shell.nix 
rustup --help
which rustup
clear
ls
clear
ls
cd ..
cd ruststuff/
ls
vim README.md
hello-world
cargo new hello
ls
cd hello/
ls
tree .
cd ..
tree hello/
FG
fg
neovim version
nvim version
nvim --version
clear
ls
cd ..
ls
cd ruststuff/
ls
sudo apt install lua
ls
cd ..
ls
cp -R nixdemo/ luastuff
cd luastuff/
ls
vim shell.nix 
cd ..
cd luastuff/
direnv allow
fg
lua --version
clear
ls
rm foo*
ls
rm foo*
rm -rf foo*
ls -lha
rm bin
rm -rf bin .bundle Gemfile* lib LIC* Rakefile .ruby test vendor
ls -lha
cat shell.nix 
ls
vim shell.nix 
nix shell -p
nix-shell --help
man nix-shell
nix-shell help
nix-shell --help
nix shell github:nixos/nixpkgs/21808d22b1cda1898b71cf1a1beb524a97add2c4#lua53Packages.lua
clear
ls
cd ..
cd luastuff/
cd ..
cd luastuff/
clear
ls
ls -lha
cd ..
ls
cd ruststuff/
ls
fdg
fg
ls
vim README.md 
ls
cd hello/
ls
vim src/
ls
cd ..
ls
vim README.md 
cd ../gostuff/
ls
cd ..
ls
cd zigstuff/
ls
touch README.md
ls
vim README.md 
ls
vim README.md 
ls -lha ../nixdemo/
cp ../nixdemo/shell.nix .
cp ../nixdemo/.envrc .
cat .dir
ls
ls -lha
vim .nevrc
vim .envrc 
direnv allow
vim shell.nix 
zig verion
zig version
cd ..
zig version
cd ~/.local/
ls
ls -lha
ln -sf zig-linux-x86_64-0.14.0/ zig
ls -lha
man ln
rm zig
ln -sf zig-linux-x86_64-0.14.0/ zig
ls -lha
cd ~/Projects/
ls
cd zigstuff/
ls
zig version
cd ..
zig version
ls
cd zigstuff/
ls
clear
ls
vim README.md 
ls -lha
rm .envrc
rm shell.nix 
cat README.md 
vim README.md 
cat README.md 
echo > shell.nexs <<EOF
  let
    nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-24.11";
    pkgs = import nixpkgs { config = {}; overlays = []; };
  in

  pkgs.mkShellNoCC {
    packages = with pkgs; [
      zig_0_13
    ];
  }
EOF

ls
mv shell.nexs shell.nix
vim README.md 
rm shell.nix 
cat README.md 
echo > shell.nix <<EOF
  let
    nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-24.11";
    pkgs = import nixpkgs { config = {}; overlays = []; };
  in

  pkgs.mkShellNoCC {
    packages = with pkgs; [
      zig_0_13
    ];
  }
EOF

cat shell.nix 
ls -=lha
ls
echo > shell.nix <<EOF
  let
    nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-24.11";
    pkgs = import nixpkgs { config = {}; overlays = []; };
  in

  pkgs.mkShellNoCC {
    packages = with pkgs; [
      zig_0_13
    ];
  }
EOF

ls
cat shell.nix 
vim shell.nix 
vim README.md 
rm shell.nix 
echo >shell.nix <<EOF
  let
    nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-24.11";
    pkgs = import nixpkgs { config = {}; overlays = []; };
  in

  pkgs.mkShellNoCC {
    packages = with pkgs; [
      zig_0_13
    ];
  }
EOF

cat shell.nix 
ls
vim README.md  
cat README.md 
cat >shell.nix <<EOF
  let
    nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-24.11";
    pkgs = import nixpkgs { config = {}; overlays = []; };
  in

  pkgs.mkShellNoCC {
    packages = with pkgs; [
      zig_0_13
    ];
  }
EOF

cat shell.nix 
vim README.md 
cat >.envrc <<EOF
    use nix
EOF

direnv allow
fg
zig version
fg
ls -lha ~
cd ../ruststuff/
ls
cp ../zigstuff/.envrc ./
cp ../zigstuff/shell.nix ./
ls
vim .envrc 
ls -lha
direnv allow
ls -lha
rustup --version
cd ..
rustup --version
cd ruststuff/
rustup --version
rustup default stable
vim README.md 
ls -lha
export $CARGO_HOME
echo $CARGO_HOME
ls
vim .envrc 
cd ~
ls
ls -lha
cd Projects/ruststuff/
direnv allow
ls
rustup default stable
ls -lha
vim .direnv
ls -lha
vim .envrc 
rustup default stable
ls -lha
rm -rf .rustup
cd ..
cd ruststuff/
direnv allow
rustup default stable
cargo login
ls -lha
tree .cargo
ls -lha
rustc --version
tree .rustup/
clear
ls
clear
ls
ls -lha
cd hello/
ls -lha
cp ../.envrc ./
cp ../shell.nix ./
direnv allow
cd ..
rm -rf hello/
ls
vim README.md 
ls
mkdir hello
cd hello/
ls
vim RE
vim ../README.md 
cat >shell.nix <<EOF
  let
    nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-24.11";
    pkgs = import nixpkgs { config = {}; overlays = []; };
  in

  pkgs.mkShellNoCC {
    packages = with pkgs; [
      cargo
      rustc
      rustfmt
    ];
  }
EOF

cat shell.nix 
vim ../README.md 
cat >.envrc <<EOF
export CARGO_HOME=$PWD/.cargo
export RUSTUP_HOME=$PWD/.rustup

use nix
EOF

direnv allow
ls -lha
cargo --version
ls -lha
cd ~
cargo --version
cd -
ls -lha
vim .envrc 
cd ..
cd hello/
nix shell
nix-shell
ls
ls -lha
ls
vim .envrc
cargo --help
cargo init
ls -lha
vim ../README.md 
cargo init --help
cargo help init
ls
vim shell.nix 
cargo init --help
cargo help init
ls
vim shell.nix 
cd ..
cd hello/
cargo help init
rustup toolchain list
rustup install stable
ls -lha
rustup --version
ls -lha
rm .envrc
rm shell.nix 
ls -lha
rm .rustup/
ls
cd ..
ls
rm -rf hello/
ls -lha
mkdir hello
cd hello/
cargo init 
ls -lha
ls
vim rust-toolchain.toml
cd ..
cd hello/
ls -lha
cargo build
cargo toolchain list
rm rust-toolchain.toml 
cargo toolchain list
cargo --list
cargo toolchain --list
cargo --list | grep tool
cargo list
rustup toolchain list
rustup toolchain --list
rustup list
rustup toolchain --list
ls
vim rust-toolchain.toml
cd ..
cd hello/
ls
cargo build
vim Cargo.toml 
ls
vim rust-toolchain.toml 
cargo build
echo $TEMP
echo $TMP
mktemp --help
clear
ls
cd ..
ls
cat .envrc
cd ..
ls
ls -lha
cd ruststuff/
ls
ls -lha
rm -rf .RUSTUP
vim .envrc
rm shell.nix 
vim .envrc 
direnv allow
cd ..
cargo --version
cd ruststuff/
cargo --version
ls
ls -lha
echo $CARGO_HOME
rm -rf .cargo/
rm -rf .rustup/
ls
rustup default stable
rustc --version
cd hello/
vim rust-toolchain.toml 
cd ..
cd hello/
cargo build
rustc --version
cargo build
ls -lha
cat target/
tree target/
cd target/
ls
cd ..
cargo run
ls -lha
vim rust-toolchain.toml 
cargo build
cargo run
ls
cp ../../zigstuff/shell.nix ./
cp ../../zigstuff/.envrc ./
vim shell.nix 
vim .envrc 
mv rust-toolchain.toml ../
direnv allow
ls
vim .envrc 
direnv allow
ls
vim .envrc 
direnv allow
fg
ls
mkdir .tmp
vim .envrc 
cargo help 
cargo help build
which cargo
ldd /nix/store/3l97w5r9iql8x11xr1dzxpxhh7h195lj-cargo-1.82.0/bin/cargo help
ls -lha
cargo --version
cargo build
ls
rm Cargo.lock 
cargo build
vim Cargo.toml 
cargo build
ls -lha
vim .envrc 
ls
rm shell.nix 
vim .envrc 
ls -lha
rm .cargp
ls
rm -rf .cargp
ls -lha
cargo clean
ls -lha
tree .tmp/
cd ..
cd hello/
direnv allow
ls -lha
cargo build
ls -lha
tree .tmp/
ls
vim .dir
vim .envrc 
ls -lha
tree .cargo/
rm -rf .cargo/
tree .rustup/
ls
clear
ls
rm -rf .rustup/
ls
vim Cargo.toml 
ls -lha
rm -rf .tmp
ls -lha
rm -rf target/
ls
ls -lha
cd ..
cd hello/
direnv allow
cargo build
rustc --version
rustup default 1.86
ls
vim src/
cd ..
ls
mkdir echo
cd echo/
ls
cargo init 
ls
vim src/
cargo build
cargo run
clear
ls
cd ..
ls
cd ..
ls
cd gostuff
ls -lha
vim README.md 
ls
mkdir hello
cat README.md 
cd hello
vim ../README.md 
cat >shell.nix <<EOF
  let
    nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-24.11";
    pkgs = import nixpkgs { config = {}; overlays = []; };
  in

  pkgs.mkShellNoCC {
    packages = with pkgs; [
    go
    ];
  }
EOF

ls -lhga
cat ../README.md 
ls
vim ../README.md 
ls
vim .envrc
ls
vim shell.nix 
vim .envrc 
direnv allow
go env GOROOT
go --version
go version
ls
which go
gomod --version
cat ../README.md 
go mod --version?
go mod --version
ls
vim shell.nix 
go mod
vim shell.nix 
ls lha ~/.
ls -lha ~/
cd ~/.local/
ls -ha
ls -lha
vim ~/.bashrc
cd ~/Projects/gostuff/
ls
cd hello
ls
vim .envrc
cd ..
cd hello
direnv allow
go --version
which go
go mod init hello
ls
vim hello.go
go run
vim .envrc 
go build
ls -lha
tree .go/
which go
vim ~/.local/go
go install staticcheck
go install honnef.co/go/tools/cmd/staticcheck@latest
tree .go/
ls -lha
staticcheck
which saticcheck
which staticcheck
vim ~/.bashrc
vim .envrc
vim shell.nix 
direnv allow
vim shell.nix 
go --version
go version
vim shell.nix 
go version
vim .envrc 
direnv allow
go version
vim shell.nix 
go version
vim shell.nix 
go version
vim shell.nix 
nix-shell -p go_1_21
go version
env
unset GOPATH
unset GOROOT
nix-shell -p go_1_21
go version
ls
vim shell.nix 
mkdir foo
cd foo/
nix-shell
cd ..
mkdir junk
cd junk/
nix-shell
env
nix-shell -p ripgrep
which rg
type rg
ls
vim shell.nix
nix-shell
vim shell.nix 
nix-shell
vim shell.nix 
nix-shell
fg
nix-shell
fg
vim shell.nix 
fg
nix-shell
fg
vim shell.nix 
fg
nix shell
nix-shell
fg
ls
vim shell.nix 
cat shell.nix 
exit
go install golang.org/x/tools/gopls@latest
ls -lha
tree go/
rm -rf go
whoami
ls -lha
cd go
ls -lha
cd pkg/
ls
cd mod/
ls
ls -lha
cd golang.org/
ls -lha
cd x
ls -lha
cd tools
ls -lha
cd ../../../../
ls
cd ..
rm -rf go/
stat go/pkg/mod/golang.org/x/tools/gopls@v0.18.1/LICENSE
ls
ls -lha
cd hello
mkdir hello
cd hello/
ls
vim main.c
gcc main.c 
ls
a.out
./a.out 
vim default.nix
mkdir src
ls
mv main.c src/
rm a.out 
ls -lha
fg
g
exit
cowsay hello
fg
exit
vim .envrc
direnv allow
nix-shell
ls
exit
fg
exit
clear; cd /home/mgreenly/Projects; ls -lha; echo
cd junk/
ls
nix-shell
ls
cd hello/
ls
vim default.nix 
nix-build
fg
nix-build
nix-store -l /nix/store/74m9jjmrq56k37n3g2jskj07c7zgsic5-hello-world.drv
fg
nix-store -l /nix/store/74m9jjmrq56k37n3g2jskj07c7zgsic5-hello-world.drv
nix-build
cat default.nix 
tree src
vim default.nix 
nix-build
cd src/
cd ..
ls
vim default.nix 
nix-build
fg
vim default.nix 
nix-build
hello
/nix/store/gvly91ckfivxqrw9w16nzr4vdjb6rp6b-hello-world
/nix/store/gvly91ckfivxqrw9w16nzr4vdjb6rp6b-hello-world/bin/hello 
fg
ls
vim src/
nix-build
nix-run
fg
vim default.nix 
nix-build
fg
nix-build
fg
nix-build
ls
tree src/
fg
nix-build
fg
nix-build
fg
nix-build
fg
nix build
nix-build
ls
cd result
ls
cd bin/
ls
./hello 
cd ..
./hello
hello
fg
nix redpl
nix repl
cd ..
cd nixdemo/
ls
cd ..
mkdir nixstuff
cd nixstuff/
vim README.md
ls
clear
ls
clear
ls
clea
cd ..
cd zigstuff/
ls
vim shell.nix 
ls
cd ..
cd nixstuff/
ls
vim README.md 
ls
cd ..
ls
cd junk/
ls
mv hello/ ../nixstuff/
cd ../nixstuff/
ls
cd hello/
ls
vim default.nix 
nix-build
fg
nix-build
nix build
fg
nix build
nix-build
fg
nix-build
fg
ls
cd ../RE
cd ..
ls
vim README.md 
nix --version
ls
vim README.md 
ls
cd hello/
ls
cd ..
ls
mkdir foo
cd foo/
ls
vim shell.nix
vim shell.nix 
nix-shell
fg
vim shell.nix 
nix-shell
export NIX_SHELL_PRESERVE_PROMPT=1
nix-shell
cd ..
exit
cd foo/
fg
nix-sell
nix-shell
fg
nix-shell
fg
nix-channel --add https://nixos.org/channels/nixos-unstable nixos-unstable
nix-shell
fg
exit
go version
hello
exit
go version
exit
clear; cd /home/mgreenly/Projects; ls -lha; echo
cd nix
ls
cd nixstuff/
ls
cd foo/
ls
vim shell.nix 
nix-shell
fg
nix-shell
fg
nix-shell
fg
nix-shell
fg
exit
go version
exit
go version
exit
go version
fg
exit
go version
which go
exit
go version
fg
ls
vim shell.nix 
nix-shell
fg
nix-shell
which go
nix-env uninstall go
nix-env --uninstall go
go --version
which go
exit
go version
exit
ls
vim shell.nix 
nix-shell
fg
nix-shell
vim shell.nix 
nix-shell
exit
nix-shell
go vesion
go version
whcih go
which go
fg
vim shell.nix 
nix-shell
fg
ls
vim shell.nix 
nix-shell
fg
exit
clear; cd /home/mgreenly/Projects; ls -lha; echo
cd nixstuff/
ls
cd foo/
ls
clear
ls
vim shell.nix 
nix-shell -p nix-info
fg
ls
exit
go version
fg
vim shell.nix 
exit
go version
exit
clear; cd /home/mgreenly/Projects; ls -lha; echo
cd nixstuff/
ls
cd foo/
vim .envrc 
direnv allow
ls
vim shell.nix 
nix-shell
fg
vim shell.nix 
exit
go version
exit
go version
exit
clear; cd /home/mgreenly/Projects; ls -lha; echo
cd nixstuff/
cd foo/
nix-shell
fg
vim .envrc 
direnv allow
clear
ls
vim shell.nix 
nix-shell
fg
exit
sudo du -h /nix
sudo du -hs /nix
exit
cd ; vim /home/mgreenly/Documents/notes.txt
ls -lha
fg
cowsay
fg
exit
fg
vim shell.nix 
exit
cowsay hi
exit
ls
cd ..
cd foo/
ls -lha
exit
clear
ls
exit
clear
exit
clear
ls
exit
clear
ls -lha
exit
clear
ls
exit
clear; cd /home/mgreenly/Projects; ls -lha; echo
cd nixstuff/
ls
cd hello/
ls
vim default.nix 
ls
cd ..
ls
cd hello/
ls
ls -lha
cd ..
cd foo/
ls
ls -lha
vim shell.nix 
nix-shell
fg
vim shell.nix 
nix-shell
ls
vim shell.nix 
nix-shell
vim shell.nix 
nix-shell
vim shell.nix 
nix-shell
vim shell.nix 
nix-shell
fg
ls
vim shell.nix 
nix-shell
fg
ls
vim shell.nix 
nix-shell
clear
ls
nix-shell
fg
vim shell.nix 
nix-shell
ls
vim shell.nix 
vim nix-shell
nix-shell
ls
vim shell.nix 
nix-shell
vim shell.nix 
nix-shell
ls
vim shell.nix 
nix-shell
ls
vim shell.nix 
nix-shell
vim shell.nix 
nix-shell
vim shell.nix 
nix-shell
vim shell.nix 
nix-shell
vim shell.nix 
nix-shell
vim shell.nix 
nix-shell
exit
ls -lha
exit
cd Projects/nixstuff/
cd foo/
ls
nix-shell
cd ..
exit
ls
vim .envrc
direnv allow
cd ..
pwd
exit
clear; cd /home/mgreenly/Projects; ls -lha; echo
clear
ls
cd nixstuff/
ls
cd foo/
ls
ls -lha
vim shell.nix 
shell.nix
nix-shell
clear
ls
cd ..
cd foo/
go version
exit
clear; cd /home/mgreenly/Projects; ls -lha; echo
cd nixstuff/
ls
cd foo/
ls -lha
ls
vim shell.nix 
lolcat foobar
ls
vim shell.nix 
lolcat
cowsay hi
exit
cd ; vim /home/mgreenly/Documents/notes.txt
mgmux
exit
clear; cd /home/mgreenly/Projects; ls -lha; echo
cd nixstuff/
ls
jq
ls
cd foo
ls
vim shell.nix 
vim .envrc
nix-store gc
nix-store --gc
ls -lha
ls
vim .envrc 
direnv allow
nix-shell
ls
nix-shell
vim ls
vim .envrc 
direnv allow
ls
nix-shell
which nix-shell
whoami
exit
cd ; vim /home/mgreenly/Documents/notes.txt
clear; cd /home/mgreenly/Projects; ls -lha; echo
cd nix
cd nixstuff/
ls
cd foo/
vim .envrc 
direnv allow
nix-shell
exit
sudo su
htop
sudo iostat -x 1
sudo apt install sysstat
sudo iostat -x 1
iotop
sudo apt install iotop
iotop
sudo iotop
/usr/sbin/iotop
sudo /usr/bin/iotop
sudo /usr/sbin/iotop
sudo su
clear
sudo su
mgmux
nix-store gc
nix-store --gc
ls
mgmux
clear
ls
tmux kill-server
ls -lha
mgmux
tmux attach
mgmux
ls
tmux attach
mgmux
tmux kill-server
mgmux
ls
cd Projects/nixstuff/
ls
cd foo/
git --version
exit
ls -lha
clear
ls
exit
cd Projects/nixstuff/
ls
cd foo/
ls
cat shell.nix 
jq --version
cd ..
jq --version
cd foo/
ls
vim .envrc 
direnv allow
git --version
cd ..
git --version
jq --version
cd foo/
jq --version
nix-shell
clear
ls
vim .envrc
direnv allow
ls
exit
clear
ls
exit
cowsay hi
exit
clear; cd /home/mgreenly/Projects; ls -lha; echo
cd nixstuff/
ls
cd foo/
ls
nix-shell
vim shell.nix 
nix-shell
clear
ls
exit
tmux kill-server
mgmux
exit
type -p cowsay
mkdir morejunk
nix copy --to file://morejunk $(type -p cowsay)
nix-copy --to file://morejunk $(type -p cowsay)
exit
nix-store --query --graph 
nix-store --query --graph cowsay
type -p cowsay
nix-store --query --graph /nix/store/xdg8ihc6fwkhqk964ir9ch8h74p510z1-cowsay-3.8.3/bin/cowsay
nix-store --query --graph /nix/store/xdg8ihc6fwkhqk964ir9ch8h74p510z1-cowsay-3.8.3/bin/cowsay > dotfile
exit
clear; cd /home/mgreenly/Projects; ls -lha; echo
cd nixstuff/
ls
cd hello/
ls
vim default.nix 
nix build
nix-build
vim default.nix 
nix-build
ls
vim default.nix 
cd ../foo/
ls
vim shell.nix 
type -p cowsay
nix-shell
nix bundle nixpkgs#hello
sudo vim /etc/nix/
sudo vi /etc/nix/
sudo su
nix-bundle nixpkgs#hello
nix bundle nixpkgs#hello
nix --extra-experimantal-features bundle nixpkgs#hello
nix bundle --extra-experimental-features nixpkgs#hello
nix --extra-experimantal-features=bundle  bundle nixpkgs#hello
nix --extra-experimantal-features=bundle  nixpkgs#hello
vim ~/.config/nix/nix.conf
nix --extra-experimental-features command-build
nix --extra-experimental-features command-bundle
nix --extra-experimental-features command-bundle bundle
nix --extra-experimental-features command-bundle
nix-build --extra-experimental-features command-bundle 
nix --extra-experimental-features "nix-command bundle" bundle nixpkgs#hello
ls
nix-shell
vim dotfile 
nix-store --query /nix/store/xdg8ihc6fwkhqk964ir9ch8h74p510z1-cowsay-3.8.3/bin/cowsay
exit
cd ; vim /home/mgreenly/Documents/notes.txt
mgmux
tmux kill-server
exit
fg
exit
ruby --version
exit
ruby --version
gem list
gem install rubocop
env
echo $PATH
man field
man cols
field
feild
tr --help
echo $PATH | tr ":" "\n"
ls
gem install rubocop
gem pristine debug --version 1.7.1
fg
ls
exit
gem pristine debug --version 1.7.1
exit
clear; cd /home/mgreenly/Projects; ls -lha; echo
cd nixstuff/
ls
cd foo/
ls
cat shell.nix 
cat shell.nix | xclip
sudo apt install xclip
cat shell.nix | xclip
cat shell.nix
cat shell.nix | xclip
cat shell.nix | xclip -selection clipboard
clear
ls
vim shell.nix 
nix-shell
vim shell.nix 
nix-shell
fg
vim shell.nix 
nix-shell
s -lha
ls -lha
ls morejunk/
ls
vim shell.nix 
ls
tree morejunk/
rm -rf morejunk/
ls
vim shell.nix 
nix-shell
vim shell.nix 
nix-shell
vim ~/.bashrc
vim ~/.profile 
exit
ls
mgmux
exit
echo $PATH
echo $PATH | tr ":" "\n"
ls
vim .bash_profile 
exit
echo $PATH | tr ":" "\n"
ls
vim ~/.bashrc
vim ~/.bash_profile 
vim .profile 
exec bash --login
cd ; vim /home/mgreenly/Documents/notes.txt
gem install rubocop
vim /home/mgreenly/.rvm/gems/ruby-3.2.2/extensions/x86_64-linux/3.3.0/prism-1.4.0/mkmf.log
ls
exit
clear; cd /home/mgreenly/Projects; ls -lha; echo
clear
ls
cd nixdemo
ls
cd ..
rm -rf nixdemo
cd nixstuff/
ls
cd foo/
ls
nix-shell
vim shell.nix 
nix-shell
ls
vim shell.nix 
nix-shell
exit
gem install rubocop
fg
exit
gem install rubocop
gem pristine executable-hooks --version 1.7.1
rm -rf ~/.rvm
gem pristine executable-hooks --version 1.7.1
exit
gem pristine executable-hooks --version 1.7.1
fg
exit
ruby --version
type -p gem
gem list
gem install rubocop
ls
ls -lha
which rubocop
rubocop
ri
irb
exit
echo $GEM_HOME
exit
echo $GEM_HOME
gem env
ls
exit
echo $GEM_HOME
echo $GEM_PATH
gem install rubocop
vim .gemrc
cd ..
cd foo/
ls
exit
gem install rubocop
ls
vim ~/.gemrc
echo 'gem: --no-document' >> ~/.gemrc
rm -rf .gemrc 
cat ~/.gemrc 
ls -lha
gem pristine --all
clear
ls
gem install nokogiri
ls
tree .nix-gems/gems/nokogiri-1.18.7-x86_64-linux-gnu/ext/
tree .nix-gems/gems/nokogiri-1.18.7-x86_64-linux-gnu/lib/
gem install nokogiri -- --use-system-libraries
exit
rm -rf .nix-gems/
gem instgall nokogiri -- --use-system-libraries
gem install nokogiri -- --use-system-libraries
gem isntall debug
gem install debug
gem install oj
fg
exit
gem install oj
gem install nokogiri
gem install debug
gem install rubocop
gem install rails
ls
vim shell.nix 
which bundler
which gem
exit
nodejs --version
nodejs version
which node 
node --version
exit
rm -rf .nix-gems/
npm --version
ls
bundle --version
gem --version
ruby --version
ls -lha
cat .envrc 
vim shell.nix 
rm .envrc 
ls -lha
exit
echo $GEM_PATH
exit
echo $GEM_PATH
exit
echo $GEM_PATH
exit
echo $GEM_PATH
exit
ls -lha
gem install rails
gem list
gem list nokodir
gem list nokogiri
gem install nokogiri
gem list nokogiri
rails new . 
echo $PATH
ls
cd .nix-gems/
ls
cd bin/
ls
cd ..
ls
exit
ls -lha
gem install rails
gem install nokogiri
gem install rubocop
ls -lha
du -hs .nix-gems/
rm .nix-gems/
rm -rf .nix-gems/
ls
cd ..
cp -R foo/ bar
cd bar/
ls
nix-shell
ls
vim shell.nix 
exit
rails new .
ls
mv shell.nix ../
rm -rf *
mv ../shell.nix ./
ls
excit
exit
gem install rails
rails new .
less /home/mgreenly/Projects/nixstuff/bar/.nix-gems/extensions/x86_64-linux/3.3.0/psych-5.2.3/mkmf.log
pkg-config --libs yaml-0.1
bundle install
g;em isntall psych
gem install psych
vim /home/mgreenly/Projects/nixstuff/bar/.nix-gems/extensions/x86_64-linux/3.3.0/psych-5.2.3/mkmf.log
fg
ls
exit
clear; cd /home/mgreenly/Projects; ls -lha; echo
cd nixstuff/
ls
cd foo/
ls
vim shell.nix 
nix-shell
ls
vim shell.nix 
nix-shell
vim shell.nix 
nix-shell 
ls
vim shell.nix 
nix-shell
ls
vim shell.nix 
ls -lha
type -p gem
which gem
ls -lha ~
tree ~/.rvm
rm -rf ~/.rvm
rvm
echo $GEM_HOME
echo $GEM_PATH
nix-shell
fg
vim shell.nix 
nix-shell
gem env
echo $GEM_PATH
unset GEM_PATH
unset GEM_HOME
ls
vim dotfile 
rm dotfile 
ls
vim .envrc
direnv allow
echo $GEM_HOME
echo $GEM_PATH
nix-shell
ls -lha
rm -rf .nix-gems/
ls -lha
nix-shell
ls
vim shell.nix 
nix-shell
fg
ls
vim shell.nix 
nix-shell
vim shell.nix 
nix-shell
ls
vim shell.nix 
rm -rf .nix-gems/
nix-shell 
vim shell.nix 
nix-shell
vim shell.nix 
nix-shell
vim shell.nix 
nix-shell 
vim shell.nix 
nix-shell 
fg
s
vim shell.nix 
nix-shell
exit
ls
vim shell.nix 
nix-shell
fg
vim shell.nix 
nix-shell
vim shell.nix 
nix-shell
vim shell.nix 
nix-shell
cd ../bar
ls -lha
cd ../foo/
ls -lha
cd ../bar/
ls
vim shell.nix 
nix-shell
ls
vim shell.nix 
nix-shell
fg
ls
vim shell.nix 
nix-shell
exit
echo $LIBYAMLPATH
cd $LIBYAMLPPATH
ls
cd -
cd $LIBYAMLPATH
ls
cd 
ls
gem install psych
echo ${libyaml-dir}
dir
fg
exit
ls
echo LD_LIBRARY_PATH
echo $LD_LIBRARY_PATH
tree /nix/store/9m4nrjik2837143iins0hlbnr7cs7psf-libyaml-0.2.5/lib
echo $C_INCLUDE_PATH
libtool
exit
gem isntall psych
ls
bundle install
nix-store libyaml
nix-store -q libyaml
exit
gem install psych
gem install psych -- --without-libyaml-lib
vim /home/mgreenly/Projects/nixstuff/bar/.nix-gems/extensions/x86_64-linux/3.3.0/psych-5.2.3/mkmf.log
ls /nix/store/9m4nrjik2837143iins0hlbnr7cs7psf-libyaml-0.2.5/lib
vim /home/mgreenly/Projects/nixstuff/bar/.nix-gems/extensions/x86_64-linux/3.3.0/psych-5.2.3/mkmf.log
gem install psych -- --with-pkg-config
vim /home/mgreenly/Projects/nixstuff/bar/.nix-gems/extensions/x86_64-linux/3.3.0/psych-5.2.3/mkmf.log
fg
ls
exit
gem install psych -- --with-pkg-config
gem install psych --with-pkg-config
gem install psych -- --with-pkg-config
echo $LIBYAML_PATH
vim /home/mgreenly/Projects/nixstuff/bar/.nix-gems/extensions/x86_64-linux/3.3.0/psych-5.2.3/mkmf.log
gem install psych -- 
vim /home/mgreenly/Projects/nixstuff/bar/.nix-gems/extensions/x86_64-linux/3.3.0/psych-5.2.3/mkmf.log
pkg-config libyaml
pkg-config --help
pkg-config --libs
pkg-config --libs libyaml
echo $LIBYAML_PATH
ls /nix/store/9m4nrjik2837143iins0hlbnr7cs7psf-libyaml-0.2.5/lib
pkgconfig --libs libyaml
fg
ls
exit
gem install psych
ls
fg
exit
gem uninstall psyche
gem uninstall psych
gem install psych
fg
ls
exit
gem install psyche
gem install psych
exit
bundle
gem cleanup stringio
bundle
ls -lha
exit
gem instgall rails
gem install rails
ls -lha
rails new .
gem install pg
ls
exit
gem install pq
gem isntall pg
gem install pg
vim /home/mgreenly/Projects/nixstuff/bar/.nix-gems/extensions/x86_64-linux/3.3.0/pg-1.5.9/mkmf.log
fg
ls
exit
gem isntall pg
gem install pg
exit
gem uninstall pg
gem install pg
vim /home/mgreenly/Projects/nixstuff/bar/.nix-gems/extensions/x86_64-linux/3.3.0/pg-1.5.9/mkmf.log
g
vg
ls
exit
gem install pg
gem install db-mariadb
ls
exit
gem install pg
ls -lha
rm -rf .nix-gems/
gem install pg
rm -rf .nix-gems/
ls
vim shell.nix 
exit
ls -lha
gem install pg
ls -lha
node --version
ls
vim shell.nix 
ruby --version
vim shell.nix 
exit
gem install pq
gem install pg
gem isntall psych
gem install psych
exit
clear; cd /home/mgreenly/Projects; ls -lha; echo
cd nixstuff/
ls
cd bar/
ls
vim shell.nix 
nix-shell
fg
nix-shell
fg
vim shell.nix 
nix-shell
vim shell.nix 
nix-shell
vim shell.nix 
gem install psych
nix-shell
vim shell.nix 
fg
nix-shell
vim shell.nix 
nix-shell
vim shell.nix 
gem uninstall psych
nix-shell
vim shell.nix 
nix-shell
ls
vim shell.nix 
nix-shell
ls -lha
cd ..
cp bar/shell.nix foo/shell.nix 
rm -rf bar/
vim foo/shell.nix 
ls foo/
cp -R foo/ bar
cd bar/
ls
gem install rails
nix-shell
vim shell.nix 
nix-shell
vim shell.nix 
nix-shell
ls
vim shell.nix 
nix-shell
fg
vim shell.nix 
nix-shell
vim shell.nix 
nix-shell
ls
vim shell.nix 
nix-shell
vim shell.nix 
nix-shell
ls
cd ..
cp bar/shell.nix foo/shell.nix 
rm -rf bar/
cd foo/
ls
vim shell.nix 
nix-shell
nix-store gc
nix-store --gc
nix-shell
ls
vim shell.nix 
exit
fg
vim shell.nix 
exit
env
echo $PATH | tr ":" "\n"
clear
ls
tmux kill-server
mgmux
tmux kill-server
mgmux
exit
clear; cd /home/mgreenly/Projects; ls -lha; echo
cd nixstuff/
ls
cd foo/
cd f
ls
cat shell.nix 
exit
mgmux
exit
uptime
ls
vim shell.nix 
clear
exit
clear; cd /home/mgreenly/Projects; ls -lha; echo
clear
ls -lha
cd nixstuff/
ls
cd foo/
ls -lha
nix-shell
clear
ls
clear
exit
cd ; vim /home/mgreenly/Documents/notes.txt
ruby --version
node --version
exit
clear; cd /home/mgreenly/Projects; ls -lha; echo
cd nixstuff/
ls
cd foo/
ls
nix-shell
exit
ruby --version
node --version
exit
clear; cd /home/mgreenly/Projects; ls -lha; echo
cd nixstuff/
cd foo/
ls
nix-shell
exit
cd ; vim /home/mgreenly/Documents/notes.txt
# well hello world
clear
mgmux
tmux kill-server
mgmux
tmux kill-server
mgmux
tmux kill-server
exit
