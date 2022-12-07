# webmatze dotfiles

## Requirements

We need `stow` to be able to automatically symlink the files.

```bash
brew install stow
```


## Install
-------

Clone this repo to your home directory:

```bash
git clone git://github.com/webmatze/dotfiles.git ~/dotfiles
```

Install the dotfiles:

```bash
cd ~/dotfiles
stow zsh
```

## More about stow

* [Easily manage your Linux config files with Stow](https://thoughtbot.com/blog/rcm-for-rc-files-in-dotfiles-repos)
* [Stow manual](https://www.gnu.org/software/stow/manual/stow.html)

