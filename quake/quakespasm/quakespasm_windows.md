### SINGLEPLAYER QUAKE FOR WINDOWS
#### 1—Engine
Download the latest Windows *Quakespasm* from <http://quakespasm.sourceforge.net/download.htm>  
Create a folder *Quake* wherever you might want it  
Place the Quakespasm application inside this folder  
Create a folder *id1* inside the Quake folder  

#### 2—Content
Follow either section 2.1 for the demo version or 2.2 for the full version  

###### 2.1—Demo
Download *pak0.pak* from <https://github.com/shaunlebron/blinky/blob/master/game/id1/pak0.pak?raw=true>  
Place it in the id1 folder from earlier  
Skip section 2.2  

###### 2.2—Full Version
Install Quake using Steam, like any other game  
Right-click on Quake in the sidebar and select *Properties*  
Go to the *Local Files* tab and select *Browse Local Files*  
This folder contains 7 different versions of Quake  
Ignore them all, unless you want to relive the 90s (I suggest *WinQuake.exe*)  
Open the enclosed *Id1* folder and copy *PAK0.PAK* and *PAK1.PAK* to your id1 folder from earlier  

#### 3—Configuration
Quake by default requires some setup to play like a modern game, and to look closer to the original Quake  
Follow section 3.1 to skip this or follow 3.2 to configure it manually  

###### 3.1—Manual Configuration
Right-click on the link [https://raw.githubusercontent.com/m0rrism0rris/misc/main/quake/quakespasm/config.cfg] and select *Save Link As*  
Name it *config.cfg* and place it in the id1 folder  
Skip section 3.2  

###### 3.2—Manual Configuration
Open Quakespasm, and start a new game  
Press *~* to open the console

*Some useful settings:* 
- For non-blurry textures `gl_texturemode gl_nearest`  
- For a crosshair `crosshair 1`
- For square particles `r_particles 2`
- To use the original animations `r_lerpmodels 0` and `r_lerpmove 0`
- To fix the UI `scr_conscale 2`, `scr_menuscale 2`, `scr_sbarscale 2`, and `scr_crosshairscale 2`  
  (or whatever whole number you might want)
- To make the window borderless `vid_borderless 1`
- (FOR 90S FANS ONLY) To reduce the resolution `r_scale 2` or even 3 or 4  

Finally, press *Escape* and go to Options  
Set them as you see fit, and make sure to enable mouselook  

#### 4—Soundtrack (OPTIONAL BUT YOU REALLY REALLY SHOULD)
You will probably want the soundtrack to Quake as well  
Download it from <https://www.quaddicted.com/files/music/quake_campaign_soundtrack.zip>  
The zip should contain a folder named *id1*  
Drag the contents of this folder to your own id1 folder  

#### 5—Lighting (OPTIONAL)
If you prefer a less... *archaic* graphical style, Quakespasm supports colored lighting  
Download it from <http://www.quaketastic.com/files/misc/litvis_packs/id1_litvis.zip>  
Place the *maps* folder it contains into your id1 folder  

##

*You should now be ready to play Quake singleplayer.  
Rip and tear! (That's Doom but whatever)*
