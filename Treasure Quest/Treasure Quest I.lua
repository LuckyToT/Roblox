-- Why are your here Levi
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
        Enabled = false, -- true/false
        GameMode = 'Classic' -- Classic,Uncapped,Endless,Endless Uncapped,Minibosses
    },

    CustomDungeon = {
        Enabled = true, -- true/fase 
        Dungeon = "Monolith Boss", -- Monolith Boss, Ancient Jungle,Coral Kingdom,Crystal Cave,Sacred Sands,Candy Land,Sinister Sewers,Magical Mushrooms,Space Base,Daring Dojo,Cryptic Castle,Santa's Workshop,Ice Palace,Frenzy Factory,Fiery Fortress, Danger Depths, Poison Prison,
        Difficulty = 'Impossible', -- Easy,Medium,Hard,Demon,Impossible
        GameMode = 'Solo Endless' -- Classic,Uncapped,Endless,Endless Uncapped,Minibosses (Monolith Boss: Classic, Solo Endless)
    },

    AutoLeave = { -- sometime it seems bug who care it's free scrpit
		NextDungeon = { -- Leave when you can play in the next dungeon (For gamemode:"Endless Uncapped", "Solo Endless" only)
		    Enabled = false,
            WaitTime = 3
		},
		InventoryFull = { -- Leave the dungeon when your Inventory is full (For gamemode:"Endless Uncapped", "Solo Endless" only)
			Enabled = true,
            WaitTime = 3
		},
		BackToLobby = { -- Leave the dungeon when you die
            Enabled = true,
            WaitTime = 3
        },
    },
    
    AutoSell = { -- be careful with this shit autosell
        Enabled = true, 
        ['Common'] = true,  --  green 
        ['Rare'] = false,  -- blue 
        ['Legendary'] = false, -- red
        ['Mythical'] = false,  -- yellow 
        ['Ultimate'] = false -- light blue 
    },
	
	Webhook = { -- sometime it seems broken (when using Instakill in "Endless Uncapped" gamemode)
        Enabled = false, -- true/false
        webhookLink = '',
        PingForRarity = {
            ['Common'] = false,
            ['Rare'] = false,
            ['Legendary'] = false,
            ['Mythical'] = true,
            ['Ultimate'] = true
        },
    }
}
