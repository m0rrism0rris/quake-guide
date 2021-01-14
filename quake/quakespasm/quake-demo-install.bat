if not exist "%CD%\QSS" md QSS
cd QSS
curl -o qss.zip https://fte.triptohell.info/moodles/qss/quakespasm_spiked_win64.zip
powershell -command "expand-archive %CD%\qss.zip %CD%"
del qss.zip
for %%a in ("quakespasm_spiked_win64\*") do move "%%~a" "%CD%"
rd "quakespasm_spiked_win64"
del quakespasm.pak
del Quakespasm.html
del LICENSE.txt
del Quakespasm-Music.txt
del Quakespasm-Spiked-Revision.txt
del Quakespasm-Spiked.txt
del Quakespasm.txt
if not exist "id1" md id1
cd id1
curl -o pak0.pak https://raw.githubusercontent.com/shaunlebron/blinky/master/game/id1/pak0.pak
curl -o quake_campaign_soundtrack.zip https://www.quaddicted.com/files/music/quake_campaign_soundtrack.zip
powershell -command "expand-archive %CD%\quake_campaign_soundtrack.zip %CD%"
del quake_campaign_soundtrack.zip
move quake_campaign_soundtrack\id1\music %CD%
move quake_campaign_soundtrack\id1\tracklist.cfg %CD%
rd quake_campaign_soundtrack\id1
del quake_campaign_soundtrack\quake_campaign_soundtrack_readme.txt
rd quake_campaign_soundtrack
choice /m "Do you wish to install coloured lighting? (recommended)"
if errorlevel ==y goto one
if errorlevel ==n goto two
:one
curl -o id1_litvis.zip http://www.quaketastic.com/files/misc/litvis_packs/id1_litvis.zip
powershell -command "expand-archive %CD%\id1_litvis.zip %CD%"
del id1_litvis.zip
goto two
:two
(
echo gl_texturemode gl_nearest
echo crosshair 1
echo r_particles 2
echo scr_conscale 2
echo scr_menuscale 2
echo scr_sbarscale 2
echo scr_crosshairscale 2
echo vid_borderless 1
echo bind "w" "+forward"
echo bind "a" "+moveleft"
echo bind "s" "+back"
echo bind "d" "+moveright"
echo cl_alwaysrun 1
echo +mlook
) > config.cfg
(
echo r_lerpmodels 0
echo r_lerpmove 0
) > autoexec.cfg
@echo off
echo.
echo Successfully installed Quake demo to %CD%\QSS
echo Rip and tear! (That's Doom but whatever)
echo.
echo Once you load up the game, you might need to use the + and - keys if your hotbar isn't showing.
echo Use the arrow keys and ENTER to navigate the menu.
echo Good luck, soldier.
echo.
echo [1mPress any key to exit the Command Prompt.[0m
pause >nul