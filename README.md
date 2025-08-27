# My XFCE Everforest Dot-files

Hello! In this repo are most of the files you'd need to replicate or make your own spin of my XFCE config. Some of the files are fairly straight-forward enough to just drop in, but others you'll need to tweak a little yourself to get working, if you want to use them at all.

# GTK, Icons & Fonts

Inside the .config directory is the gtk-3.0 folder, that can simply be dropped in as the CSS only defines things such as the panel roundness and element highlights (such as for the workplace switcher and some buttons).

The GTK theme is taken from **Fkorpsvart's** Everforest theme [here] (https://www.pling.com/p/1695467). I opted for the MacOS buttons and borderless windows, but that is ultimately up to you.

Icons are taken from **Eleuth's** [Gruvbox Plus Icon Pack] (https://www.gnome-look.org/p/1961046), there he provides some info on how you can change the folder colors after installing.

My personal font choice was the Iosevka fonts from the [Nerd Fonts] (https://www.nerdfonts.com/) website, which you can find on their downloads page. Starship **requires** a nerd font for the icons and powerline theme to work so even if you don't want Iosevka specifically, make sure you're using a nerd font!

Cursor theme is from **Sainnhe's** [Capitaine Cursors] (https://www.gnome-look.org/p/1818760), I used the gruvbox version specifically.

After installing the themes, icons and fonts you want, dropping the right folders into your .themes, .fonts and .icons directories respectively should make them detectable by the XFCE appearance menu. Cursors go into the .icons directory as well, alongside your other system icon themes.

# Bashrc

Included in this repo is a plain text file simply named "bash". Inside are the aliases and evals that you might like, especially for starship since it requires an eval to run upon starting your terminal.

Programs/tools in my bashrc include:

**(Aliases)**

- [Copyparty] (https://github.com/9001/copyparty)

- [lsd] (https://github.com/lsd-rs/lsd)

**(Evals)**

- [Starship] (https://starship.rs/)

- [Zoxide] (https://github.com/ajeetdsouza/zoxide)

- [fzf] (https://github.com/junegunn/fzf)

# Starship

Upon installing starship, you can drop the **starship.toml** file in your .config directory if you aren't doing the entire directory from the repo all at once.

# Fastfetch

Fastfetch is the Neofetch alternative which you can download [here] (https://github.com/fastfetch-cli/fastfetch). My config is a simple modification of one of the pre-existing presets that Fastfetch comes with, you can read their documentation to make one yourself or modify the existing ones.

# Discord

As the directory suggests, you need [Better Discord] (https://betterdiscord.app/) for this CSS to work! I personally have some issues with the theme crashing or it being disabled with every new Discord update, so use at your own discretion.

# Genmon Config

The music player you can see on the panel is a modified version of [this] (https://github.com/rod-farias/XFCE-GenMon-Now-Playing) awesome plugin. The read-me has some important information on how to get it working, so do refer to it if you don't know how to setup genmon yourself. My modification makes the text scroll, compacts it so it doesn't take up too much space, and move the play/pause clicking to be exclusive to the button itself.

Inside of the file for the config are directories which point to the icons I'm using for the play/pause button, I have said icons in the assets directory in the repo, but make sure you change the config so it uses your own preferred directory (or text icon instead).

I made a standalone volume percentage plugin which just displays your system volume, I chose the plugins in an order so the PulseAudio plugin would be the left-most, followed by the volume percentage and the "now playing" plugin. Spacing might be a bit weird so you can just add separators in between the plugins if that's the case.

# Assets

The assets directory contains png files that I used for various parts of the config. Going into your panel preferences allows you to make the XFCE panel use a background image instead of a solid color, which is where you can choose to have one of the **panel bg** files take that place, or your own custom image (if you want one at all, lol).

I included the custom Mint logo and power button so you can change your preferred launchers to use them. The terminal background can be added from your terminal preferences in the **appearance** tab, just make sure the adjustment is set to tiled if you're using the image I provided.

# Wallpapers

Last but not least are the wallpapers! Many of these are custom ones I made or recolored, but none of the art or source photos are mine. A couple of them have the original creators in the file name, such as *Hamsti* on Unsplash and *Boskoop* from Art Station, but the rest I either made from mashing things together, came from a pack (like the recolored Irix tile), or were images downloaded from a place that didn't list the original source.

My apologies for not making it more coherent or properly giving sources to those who deserve it, if your art or photography are in any of said files and you wish for me to credit you or take them down, please let me know!