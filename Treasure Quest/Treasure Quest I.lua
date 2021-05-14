_G.AutoCollectDaily = true
_G.GetHiddenEggs = true -- egg hunt
_G.GetHiddenSwords = true
_G.Instakill = true -- Make your game lag a lot (false = normal farming)
_G.DestroyMap = false
_G.AutoMedKit = false
_G.AutoChest = true

-- Setting --
-- Auto Upgrade, AutoEquip? 
_G.Setting = {
    AutoSelectHighest = { -- Auto select the hightest dungeon (not support Monolith Boss yet)
        Enabled = true, -- true/false
        GameMode = 'Classic' -- Classic,Uncapped,Endless,Endless Uncapped,Minibosses
    },

    CustomDungeon = {
        Enabled = false, -- true/fase
        Dungeon = "Ancient Jungle", -- Ancient Jungle,Coral Kingdom,Crystal Cave,Sacred Sands,Candy Land,Sinister Sewers,Magical Mushrooms,Space Base,Daring Dojo,Cryptic Castle,Santa's Workshop,Ice Palace,Frenzy Factory,Fiery Fortress, Danger Depths, Poison Prison,
        Difficulty = 'Easy', -- Easy,Medium,Hard,Demon,Impossible
        GameMode = 'Classic' -- Classic,Uncapped,Endless,Endless Uncapped,Minibosses
    },

    AutoLeave = {
		NextDungeon = { -- Leave when you can play in the next dungeon (For "Endless Uncapped" gamemode only)
		    Enabled = true,
            WaitTime = 3
		},
		BackToLobby = { -- Leave the dungeon when you die
            Enabled = true,
            WaitTime = 3
        },
    },
    
    AutoSell = { -- be careful with this shit autosell
        Enabled = false, 
        ['Common'] = true,  --  green 
        ['Rare'] = false,  -- blue 
        ['Legendary'] = false, -- red
        ['Mythical'] = false,  -- yellow 
        ['Ultimate'] = false -- light blue 
    },
	
	Webhook = { -- sometime it seems broken (when using Instakill in "Endless Uncapped" gamemode)
        Enabled = false, -- true/false
        webhookLink = 'https://discord.com/api/webhooks/842058487529865266/',
        PingForRarity = {
            ['Common'] = false,
            ['Rare'] = false,
            ['Legendary'] = true,
            ['Mythical'] = true,
            ['Ultimate'] = true
        },
    }
}
