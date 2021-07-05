<h1 align=center>Easy Legendary</h1>
<p align=center>
  <img alt="AUR license" src="https://img.shields.io/aur/license/easy-legendary-git">
  <img alt="AUR version" src="https://img.shields.io/aur/version/easy-legendary-git">
  <img alt="GitHub top language" src="https://img.shields.io/github/languages/top/RedsonBr140/easy-legendary">
  <img alt="GitHub language count" src="https://img.shields.io/github/languages/count/RedsonBr140/easy-legendary">
</p>
<p align=center>Script criado para tornar o <a href="https://github.com/derrod/legendary">Legendary</a> mais fácil!</p>
<p align=center>
   <p align=center><a href="https://github.com/ffraanks">By Franklin Souza</a></p>
   <p align=center>Forked by Redson</p>
</p>

### O que isso pode fazer?
Esse script interage diretamente com o Legendary, mas não automatiza as ações dele, basicamente você está usando o Legendary sem decorar os parametros.

## Como instalar
Em distros Arch-Based você pode usar um AUR-Helper para instalar o Easy Legendary, como o paru:
```bash
sudo paru -S easy-legendary-git
```
Em outras distros você precisará instalar as dependencias:
```
wine-staging giflib lib32-giflib libpng gnutls mpg123 openal v4l-utils 
libpulse libgpg-error alsa-plugins alsa-lib libjpeg-turbo sqlite
libxcomposite libxinerama libgcrypt ncurses opencl-icd-loader 
libxslt libva gtk3 gst-plugins-base-libs vulkan-icd-loader legendary
```
(Isso não é um comando, é a lista de dependencias.)

Com as dependencias instaladas você precisará instalar o Easy legendary:
```bash
sudo curl -o /usr/bin/easy-legendary https://raw.githubusercontent.com/RedsonBr140/easy-legendary/main/easy-legendary.sh
```
Para usar, execute `easy-legendary`, se você não instalou todas as dependencias, o programa pode não funcionar muito bem.
## F.A.Q
### Porque esse Script foi criado?
Inicialmente esse script foi criado apenas para não memorizar os parametros do legendary, mas eu acho que deveria ir um passo a frente, então... Porque não?

### Do que se trata o Legendary?
Legendary é um game launcher open-source que pode baixar e instalar jogos da Epic Games no Linux e Windows.

#### Como eu instalo?
Em Arch-based Você pode instalar o legendary Com o seu AUR-Helper preferido, como o yay:
```c
yay -S legendary
```
Em base Fedora:
```
sudo dnf install legendary
```
Se você quer mais informações, cheque o [repositorio oficial.](https://github.com/derrod/legendary)

