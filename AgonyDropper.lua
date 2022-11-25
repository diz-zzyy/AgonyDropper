_G.AgonyDropper = {
    -- Controllers : Enter the UserID's of the players that can control the bots.
    Controllers = {
        "707293189",
        "12813448",
    },
    
    -- Prefix : Enter the prefix before each command.
    Prefix = "!",
    
    -- Max FPS : Enter the Max FPS for the alts.
    MaxFps = 3,
}

-- Loader : Loads the script.
loadstring(game:HttpGet("https://raw.githubusercontent.com/diz-zzyy/AgonyDropper/main/Loader.lua"))()
