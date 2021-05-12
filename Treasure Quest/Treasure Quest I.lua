-- Dungeon Setting --
_G.Dungeon = 'Ancient Jungle' -- Ancient Jungle,Coral Kingdom,Crystal Cave,Sacred Sands,Candy Land,Sinister Sewers,Magical Mushrooms,Space Base,Daring Dojo,Cryptic Castle,Santa's Workshop,Ice Palace,Frenzy Factory,Fiery Fortress
_G.Difficulty = 'Easy' -- Easy,Medium,Hard,Demon,Impossible
_G.GameMode = 'Classic' -- Classic,Uncapped,Endless,Endless Uncapped,Minibosses
_G.Privacy = 'Solo' --Solo,Friends

-- Misc --
_G.DestroyMap = true
_G.AutoMedKit = true
_G.AutoChest = true

-- Webhook --
_G.Webhook = { -- sometime it's broken
    Enabled = true, -- true/false
    webhookLink = 'https://discord.com/api/webhooks/841864107774443530/NnUO9n-mJauuchbMu2IjJDnBi5cWDl4oLHLNb1-gxFINzdMae_oeCAbs4ah3CYHV7Diz',
    PingForRarity = {
        ['Common'] = true,
        ['Rare'] = true, 
        ['Legendary'] = true, 
        ['Mythical'] = true, 
        ['Ultimate'] = true 
    },
}

-- Auto Sell
_G.AutoSell = { -- be careful with this shit autosell
    Enabled = true, -- true/false
    ['Common'] = true, 
    ['Rare'] = false, 
    ['Legendary'] = false, 
    ['Mythical'] = false, 
    ['Ultimate'] = false
}

-- AutoUpgrade, AutoEquip ?```

loadstring(game:HttpGet("https://raw.githubusercontent.com/LuckyToT/Roblox/main/Treasure%20Quest/Treasure%20Quest%20II.lua", true))()
