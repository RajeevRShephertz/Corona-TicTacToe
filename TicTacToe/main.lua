--
-- Abstract: Storyboard Chat Sample using AppWarp
--
--
-- Demonstrates use of the AppWarp API (connect, disconnect, joinRoom, subscribeRoom, chat )
--

display.setStatusBar( display.HiddenStatusBar )

local storyboard = require "storyboard"
local widget = require "widget"

-- load first scene
storyboard.gotoScene( "ConnectScene", "fade", 400 )

-- Replace these with the values from AppHQ dashboard of your AppWarp app
API_KEY = "cad2bfab6310acd9696187b98682925125e469ab0d0d585db0b00609f461b791"
SECRET_KEY = "55811709916e7ce4405cde0cdc5a254cf4b506fbafdae05760a73100b8080b67"
ROOM_ID = ""
USER_NAME = "Rajeev"
REMOTE_USER = ""
ROOM_ADMIN = ""

-- create global warp client and initialize it
appWarpClient = require "AppWarp.WarpClient"
appWarpClient.initialize(API_KEY, SECRET_KEY)

appWarpClient.enableTrace(true)

-- IMPORTANT! loop WarpClient. This is required for receiving responses and notifications
local function gameLoop(event)
  appWarpClient.Loop()
end

Runtime:addEventListener("enterFrame", gameLoop)