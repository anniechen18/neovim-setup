# neovim-setup for beginners
Hello! This guide is mainly for *new* vim users. If you are already familiar with vim, you can skip past most of these steps and just grab what you need from `init.vim`.

For all the new vim users, I first want to give a disclaimer that while vim/neovim is powerful to use and loved by many, it may be overwhelming and initimidating to begin with. But let us not fear! We are on our way to having a new tool in our toolbox and that is very exciting.

This guide goes through how to set up neovim, with last section tailoring towards Haskell programming because I will mainly be programming in Haskell. Let's go!

## Set up NeoVim
1. [Install neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)

   Homebrew on macOS or linux: `brew install neovim`
2. Install a plugin manager, such as [vim-plug](https://github.com/junegunn/vim-plug#neovim)

3. `mkdir ~/.config/nvim` if you don't already have this folder

4. `cd ~/.config/nvim`

5. `nvim init.nvim` - we are using neovim to edit our neovim config! This is also a good chance to get familiar with visual and insert modes, `:wq` to write and quit (save and quit), or `:q` just to quit, or `:q!` to quit without saving.

6. Add `source $HOME/.config/nvim/plugin.vim` to the `init.nvim` file. We are going to have a separate file to specify plugins. 

7. Exit out of `init.nvim`, and run `nvim pluggin.vim` to open up the plugin file, and add
   ```
   call plug#begin("~/.vim/plugged")
   " Plugin Section
   call plug#end()
   ```

   Your plugins are going to go in the `"Plugin Section`

8. I used this [guide](https://betterprogramming.pub/setting-up-neovim-for-web-development-in-2020-d800de3efacd) to help me get started on downloading some basic plugins and getting comfortable with mapping shortcuts. This is a good time for you to play around with the color scheme and such! The guide will suggest adding things like this into your config:

   `nnoremap <C-p> :FZF<CR>`

   This means that instead of typing `:FZF` into the nvim window to bring up Fuzzy Finder, you can ctrl + p to open up FZF instead. For me, I changed `<C-p>` to `<C-f` because doing ctrl + f is more intuitive for me to bring up the FZF tool. The neat thing about vim is that you can easily configure these shortcuts to your liking in just one line.

   While going through that guide, I would suggest practicing these shortcuts and even writing it down so you can reference it easily in the beginning when you haven't developed the muscle memory for it yet.

   By the end of the guide, you should have the following plugins: `nerdtree`, `vim-devicons` (optional, just if you want the folder icons to show up on nerdtree), `fzf`, `coc`. 
   
   I added some extra customization outside of the guide, you can check it out [here](https://github.com/anniechen18/neovim-setup/blob/master/init.vim)
   
## Set up Haskell Language Server

1. [Install Node.js](https://nodejs.org/en/download/) if not already installed. Check for existing installation by running `which node`

2. `nvim ~/.config/nvim/coc-settings.json` and copy this [content](https://github.com/anniechen18/neovim-setup/blob/master/coc-settings.json) into your file.

That should be it! Following this, you should have your neovim setup ready to code in Haskell or other languages. I hope this was a helpful guide that will kickstart your vim journey. Toodaloo!
