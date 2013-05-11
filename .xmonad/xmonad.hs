import XMonad
import XMonad.Actions.UpdatePointer
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
import XMonad.Layout.NoBorders
import XMonad.Layout.Tabbed
import XMonad.Util.Run

import qualified Data.Map as M


myModMask = mod4Mask

myWorkspaces = map show [1..8]

myFocusedBorderColor = "#3399ff"

myLayout = Full ||| tiled ||| Mirror tiled ||| simpleTabbed
  where
    -- default tiling algorithm partitions the screen into two panes
    tiled   = Tall nmaster delta ratio
    -- The default number of windows in the master pane
    nmaster = 1
    -- Default proportion of screen occupied by master pane
    ratio   = 1/2
    -- Percent of screen to increment by when resizing panes
    delta   = 3/100


myKeys (XConfig {modMask = modm}) = M.fromList $
       [ ((modm, xK_i), spawn "chromium")
       , ((modm .|. shiftMask, xK_i), spawn "chromium --incognito")
       , ((modm, xK_u), spawn "gvim")
       , ((modm .|. shiftMask, xK_z), spawn "slock") ]


myManageHook = composeOne
       [ transience
       , isFullscreen -?> doFullFloat ]


myPP bar = defaultPP
  { ppOutput = hPutStrLn bar
  , ppTitle = xmobarColor "white" "" . shorten 110
  , ppCurrent = xmobarColor "white" "black" . pad
  , ppHidden = pad
  , ppHiddenNoWindows = \w -> xmobarColor "#444" "" (" " ++ w ++ " ")
  , ppSep = xmobarColor "#555" "" " / "
  , ppWsSep = ""
  , ppLayout = \x -> case x of
    "Tall"        -> "T"
    "Mirror Tall" -> "M"
    "Full"        -> "F"
    _             -> "?"
  }

main = do
  xmobar <- spawnPipe "xmobar ~/.xmobarrc"
  xmonad $ defaultConfig
    { modMask            = myModMask
    , keys               = \c -> myKeys c `M.union` keys defaultConfig c
    , workspaces         = myWorkspaces
    , layoutHook         = smartBorders (avoidStruts myLayout)
    , focusedBorderColor = myFocusedBorderColor
    , terminal           = "urxvtc"
    , logHook            = dynamicLogWithPP (myPP xmobar) >> updatePointer (Relative 0.5 0.5)
    , manageHook         = myManageHook
    }
