# Ankit's Vim Profile
Quick shout-out to Nathaniel Ringo who goes to the U of M and helped me get on my feet with Vim!

*Important*: You _must_ use Vim8 for all the features to work seamlessly. On macOS this is as easy as `brew install vim`.

To get started with my Vim profile, you should probably remove your current Vim profile by running:
`rm ~/.vim/vimrc`
Next, open Vim and run `:PlugInstall`

Voila! You're ready to go

### Notes
* You will need to install or patch your own [NerdFont] (https://www.github.com/ryanoasis/nerd-fonts) for the dev-icons to show up properly.  
  I found this hard to do on my mac so here are some detailed instructions if you wish to do it yourself:
	1. Download a patched font of your choice from the above link and set it to your terminal font/vim font (straightforward) OR
	2. `brew install fontforge` and download the font-patch.py and perform the following command: `./fontforge <path to font-patch.py> <path to font>`
	3. Install the patched font again and set it as your terminal or vim font
* I use the plug-in manager [Vim-Plug] (https://www.github.com/junegunn/vim-plug)
