import XMonad
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers (isFullscreen, doFullFloat)
import XMonad.Util.Run (spawnPipe)

myManageHook :: ManageHook
myManageHook = composeAll
	     [ isFullscreen --> doFullFloat
	     ]

main = do
xmproc <- spawnPipe "/usr/bin/xmobar /home/wkz/.xmobarrc"
bgproc <- spawnPipe "/usr/bin/xsetroot -solid '#002630'"
typroc <- spawnPipe "trayer --edge top --align right --widthtype request --expand true --SetDockType true --SetPartialStrut true --transparent true --alpha 0 --tint 0x002630 --expand true --heighttype pixel --height 18 --monitor 0 --padding 0"
volproc <- spawnPipe "gnome-sound-applet"
nmproc <- spawnPipe "nm-applet"

xmonad $ defaultConfig
     { modMask = mod4Mask
     , manageHook = manageDocks <+> manageHook defaultConfig <+> myManageHook
     , layoutHook = avoidStruts $ layoutHook defaultConfig

     , borderWidth = 5
     , normalBorderColor = "#002630"
     , focusedBorderColor = "#073642"
     }

