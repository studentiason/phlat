Phlat is a simple, fast and daily usable dark theme mainly made for [Xfce](https://xfce.org) or [MATE](https://mate-desktop.org).

### Depends on: 

* GTK2 (mist, murrine and pixbuf engine with SVG support!)
* GTK3>=3.20
* Disabled GTK3 overlay scrollbars (export GTK_OVERLAY_SCROLLING=0)

### Recommends: 

* [GTK3-NOCSD](https://github.com/PCMan/gtk3-nocsd)
* [YAD](https://sourceforge.net/projects/yad-dialog)
* Xfce or MATE
* Chrome/Chromium(@GTK3)(any blink based browser will work due the internal styling of html forms)

### also included: 

* XfDashboard
* Balou
* XfceNotifyd
* WindowManager themes(Xfwm, Macro(Metacity/Muffin), Openbox, Unity)
* Plank themes
* Chrome/Chromium Scrollbars
* Onboard theme
* A simple high contrast icon theme
* Qt5 qgtkstyle qss fixes
* and more

## Install

For example to install it as user:

```
prefix=$HOME/.local
mkdir /tmp/phlat && cd /tmp/phlat
wget https://github.com/sixsixfive/phlat/archive/master.zip
unzip master.zip
mkdir -p $prefix/share/themes
mv /tmp/phlat/phlat-master $prefix/share/themes/phlat
ln -sf $prefix/share/themes/phlat/@extra/phlat-hidpi $prefix/share/themes/phlat-HiDPI
mkdir -p $prefix/share/icons
ln -sf $prefix/share/themes/phlat/@extra/phlat-icons $prefix/share/themes/phlat
```

there are more sub themes in the @extra folder. Have a look into the [Debian postinstall](https://github.com/sixsixfive/phlat/blob/master/%40extra/PKGS/debian/postinst) or the [PKGBUILD](https://github.com/sixsixfive/phlat/blob/master/%40extra/PKGS/PKGBUILD/PKGBUILD) to get their paths.

### Packages

Packages for Debian, SuSE and Manjaro can be found on my [Opendesktop-page](https://www.opendesktop.org/s/XFCE/p/1175851/#files-panel).

## Optional

### Change hilight color

- If you want to change the default highlight color to something else(needs sed, tr and find!)

```
sh $prefix/share/themes/phlat/@extra/scripts/changecolor.sh
```
Remember that there is white text to display above that color(eg: on selections)

Some popular colors:

| Color | Description | Color | Description |
| :---: | :---: | :---: | :---: |
| ![#0088CC](https://placehold.it/150x80/0088CC/f1f2f2?text=0088CC) | Arch blue | ![#696969](https://placehold.it/150x80/696969/f1f2f2?text=696969) | Grey |
| ![#D70A53](https://placehold.it/150x80/D70A53/f1f2f2?text=D70A53) | Debian Red | ![#16A085](https://placehold.it/150x80/16A085/f1f2f2?text=16A085) | Manjaro Green |
| ![#6F6A83](https://placehold.it/150x80/6F6A83/f1f2f2?text=6F6A83) | Devuan Purple | ![#84563C](https://placehold.it/150x80/84563C/f1f2f2?text=84563C) | Caramel |
| ![#54487a](https://placehold.it/150x80/54487a/f1f2f2?text=54487A) | Gentoo Purple | ![#E95420](https://placehold.it/150x80/E95420/f1f2f2?text=E95420) | Ubuntu Orange |

### Set all themes

to set the whole theme you can run the following script (replace <$desktop> with mate or xfce!) eg:


```
sh $prefix/share/themes/phlat/@extra/scripts/set<$desktop>theme.sh
```

or:

```
sh $prefix/share/themes/phlat/@extra/scripts/set<$desktop>theme-hidpi.sh
```
