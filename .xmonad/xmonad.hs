import XMonad
import XMonad.Hooks.ManageHelpers (isFullscreen, doFullFloat)

myManageHook :: ManageHook
myManageHook = composeAll
	     [ isFullscreen --> doFullFloat
	     ]

main = xmonad defaultConfig
     { modMask = mod4Mask
     , manageHook = manageHook defaultConfig <+> myManageHook

     , normalBorderColor = "black"
     , focusedBorderColor = "#536878"
     }

