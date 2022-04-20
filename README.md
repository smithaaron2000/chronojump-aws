Linux Compile

1. Download from GIT
Install git: (Debian/Ubuntu)
```
sudo apt install git
```
Clone repository
Without a public SSH key (easy, recommended):
```
git clone https://github.com/smithaaron2000/chronojump-aws.git
```
With a public SSH key (you may need a https://gitlab.gnome.org/ account and upload there your public ssh key):
```
git clone git@github.com/smithaaron2000/chronojump-aws.git
```
Change directory:
cd chronojump

2. Install dependencies
Debian / Ubuntu / Linux Mint
Install required packages
```
sudo apt install build-essential libgtk2.0-dev r-base automake mono-mcs libtool libmono-cil-dev libmono-2.0-dev libglib2.0-cil-dev libgtk2.0-cil-dev libglade2.0-cil-dev libmono-cil-dev mono-xbuild intltool libgtk2.0-dev r-base mono-devel libmono-system-json4.0-cil
```

3. Compile
```
./autogen.sh
make
sudo make install
```
