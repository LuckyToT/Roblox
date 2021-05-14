_G.Instakill = true -- Make your game lag a lot (false = normal farming)
_G.DestroyMap = false
_G.AutoMedKit = false
_G.AutoChest = true
_G.AutoCollectDaily = true

-- Setting --
_G.Setting = {
    AutoSelectHighest = { -- Auto select the hightest dungeon (not support Monolith Boss yet)
        Enabled = true,
        GameMode = 'Classic' -- Classic,Uncapped,Endless,Endless Uncapped,Minibosses
    },

    CustomDungeon = {
        Enabled = false,
        Dungeon = "Ancient Jungle", -- Ancient Jungle,Coral Kingdom,Crystal Cave,Sacred Sands,Candy Land,Sinister Sewers,Magical Mushrooms,Space Base,Daring Dojo,Cryptic Castle,Santa's Workshop,Ice Palace,Frenzy Factory,Fiery Fortress, Danger Depths, Poison Prison,
        Difficulty = 'Easy', -- Easy,Medium,Hard,Demon,Impossible
        GameMode = 'Classic' -- Classic,Uncapped,Endless,Endless Uncapped,Minibosses
    },

    WaitForJoiners = { -- When you play with your friends
        Enabled = false,
        Host = "Account1",
        Joiners = {
            "Account2","Account3"
        }
    }
    
    AutoLeave = { -- (For Endless Uncapped only)
        LeaveDungeon = { -- Leave when you die or you can play in the next dungeon
            Enabled = false,
            WaitTime = 3
        }
        InventoryFull = { -- Leave when your inventory is full
            Enabled = false,
            WaitTime = 3
        }
    }
        
    Webhook = { -- sometime it seems broken (when using Instakill in "Endless Uncapped" gamemode)
        Enabled = true, -- true/false
        webhookLink = 'https://discord.com/api/webhooks/842058487529865266/S6RxHlMGJ93hGmyEh__FXkU5mjL9OSSMdaakfEw0mJbp7wHdLn68gKyAObbewpBuoSAa',
        PingForRarity = {
            ['Common'] = false,
            ['Rare'] = false,
            ['Legendary'] = true,
            ['Mythical'] = true,
            ['Ultimate'] = true
        },
    }
    
    AutoSell = { -- be careful with this shit autosell
        Enabled = true, -- true/false
        ['Common'] = true, 
        ['Rare'] = true, 
        ['Legendary'] = false, 
        ['Mythical'] = false, 
        ['Ultimate'] = false
    }
}
