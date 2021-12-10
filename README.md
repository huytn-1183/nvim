# nvim

## [vim-plug](https://github.com/junegunn/vim-plug)

```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

## [Node](https://github.com/nodesource/distributions/blob/master/README.md)

```
# Using Ubuntu
curl -fsSL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs
```

## [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe)

```
sudo dnf install cmake gcc-c++ make python3-devel
# home
cd .vim/plugged/YouCompleteMe/
python3 install.py --ts-completer
```

# Thứ tự cài đặt
- python3
- nvim
- vim-plug

Nếu bị lỗi thì gỡ ngược thứ tự và cài lại
