<h1 align=center>Easy Legendary</h1>
<p align=center>
  <img alt="AUR license" src="https://img.shields.io/aur/license/easy-legendary-git">
  <img alt="AUR version" src="https://img.shields.io/aur/version/easy-legendary-git">
  <img alt="GitHub top language" src="https://img.shields.io/github/languages/top/RedsonBr140/easy-legendary">
  <img alt="GitHub language count" src="https://img.shields.io/github/languages/count/RedsonBr140/easy-legendary">
  <p><a href="https://github.com/RedsonBr140/easy-legendary/blob/main/doc/README_pt-br.md">Português Brasileiro</a></p>
</p>
<p align=center>Script created to make <a href="https://github.com/derrod/legendary">Legendary</a> be so easy!</p>
<p align=center>
   <p align=center><a href="https://github.com/ffraanks">By Franklin Souza</a></p>
   <p align=center>Forked by Redson</p>
</p>

### What it can do?
the script can make many things, like download, execute games, login and logout your epic games account, and so more.

## How to install?
You can install the Easy Legendary using a AUR-Helper in Arch-based distros, such paru:
```bash
sudo paru -S easy-legendary-git
```
In others distros you will also need install this dependencies:
```
wine-staging giflib lib32-giflib libpng gnutls mpg123 openal v4l-utils 
libpulse libgpg-error alsa-plugins alsa-lib libjpeg-turbo sqlite
libxcomposite libxinerama libgcrypt ncurses opencl-icd-loader 
libxslt libva gtk3 gst-plugins-base-libs vulkan-icd-loader legendary
```
(it aren't a command, is the list of dependencies.)

With the dependencies installed, you will need to install Easy legendary:
```bash
sudo curl -o /usr/bin/easy-legendary https://raw.githubusercontent.com/RedsonBr140/easy-legendary/main/easy-legendary.sh
```
Execute it using `easy-legendary`, if you don't installed all the dependencies, the program will not work fine.
## F.A.Q
### Why this script was created?
the script was initially created just not to memorize legendary commands, but i really think it should go a step further, so i ask, why not?

### What's Legendary?
Legendary is an open-source game launcher that can download and install games from the Epic Games platform on Linux and Windows. Its name as a tongue-in-cheek play on tiers of item rarity in many MMORPGs.

#### How can i install Legendary?
In Arch-based Linux distros you can install legendary with your AUR-Helper, such yay:
```c
yay -S legendary
```
In Fedora-based you can install with dnf:
```
sudo dnf install legendary
```
If you need more informations of legendary, check [the oficial repository.](https://github.com/derrod/legendary)

