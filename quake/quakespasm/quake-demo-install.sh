#!/bin/sh
OS="`uname`"
case $OS in
    'Darwin' )
        cd /Applications
        if [ -e Quakespasm ]; then echo 'Quakespasm appears to be already installed.

To install the full version of Quake, not just the demo, follow the instructions at
[https://github.com/m0rrism0rris/misc/blob/main/quake/pak1_macosx.md]
Ignore PAK0.PAK, that comes with the demo'; exit; fi
        mkdir -p Quakespasm; cd Quakespasm
        curl -o QuakeSpasm-0.93.2-osx-SDL2.zip https://ilotfiber.dl.sourceforge.net/project/quakespasm/Mac/QuakeSpasm-0.93.2-sx-SDL2.zip
        unzip QuakeSpasm-0.93.2-osx-SDL2.zip -x quakespasm.pak
        rm QuakeSpasm-0.93.2-osx-SDL2.zip
        ;;
    'Linux' )
        echo "Idk how to do this on Linux but if you use it, you're probably much better at this sort of thing than I am. Sorry."
        exit
esac

mkdir -p id1; cd id1
curl -o pak0.pak https://raw.githubusercontent.com/shaunlebron/blinky/master/game/id1/pak0.pak
curl -o quake_campaign_soundtrack.zip https://www.quaddicted.com/files/music/quake_campaign_soundtrack.zip
unzip quake_campaign_soundtrack.zip -x quake_campaign_soundtrack/id1/music/track02.mp3 quake_campaign_soundtrack/id1/music/track03.mp3 quake_campaign_soundtrack/id1/music/track04.mp3 quake_campaign_soundtrack/id1/music/track05.mp3 quake_campaign_soundtrack/id1/music/track06.mp3 quake_campaign_soundtrack/id1/music/track07.mp3 quake_campaign_soundtrack/id1/music/track08.mp3 quake_campaign_soundtrack/id1/music/track09.mp3 quake_campaign_soundtrack/id1/music/track10.mp3 quake_campaign_soundtrack/id1/music/track11.mp3 quake_campaign_soundtrack/id1/tracklist.cfg quake_campaign_soundtrack/quake_campaign_soundtrack_readme.txt
mv quake_campaign_soundtrack/id1/music music
rm -r quake_campaign_soundtrack
rm quake_campaign_soundtrack.zip
while true; do
    read -p "Do you wish to install colored lighting? (y/n)
> " yn
    case $yn in
        [Yy]* ) 
            curl -o id1_litvis.zip http://www.quaketastic.com/files/misc/litvis_packs/id1_litvis.zip
            unzip id1_litvis.zip
            rm id1_litvis.zip
            break;;
        [Nn]* )
            exit;;
        * ) echo "y or n, which is it gonna be?";;
    esac
done

echo '
gl_texturemode gl_nearest
crosshair 1
r_particles 2
r_lerpmodels 0
r_lerpmove 0
scr_conscale 2
scr_menuscale 2
scr_sbarscale 2
scr_crosshairscale 2
vid_borderless 1
bind "a" "+moveleft"
bind "d" "+moveright"
bind "s" "+back"
bind "w" "+forward"
cl_alwaysrun "1"
+mlook' > config.cfg

echo '
r_lerpmodels 0
r_lerpmove 0
' > autoexec.cfg

echo "Installed Quake demo to `pwd`/Quakespasm
Rip and tear! (That's Doom but whatever)

To install the full version, follow the instructions at
https://github.com/m0rrism0rris/misc/blob/main/quake/pak1_macosx.md
Ignore PAK0.PAK, that comes with the demo"
