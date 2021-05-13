-- if you lag it's not script it's obfuscator make the script lag
-- Dungeon Setting --
_G.AutoDungeon = true -- auto choose dungeon and difficulty (not support Monolith Boss yet)
_G.Dungeon = "Ancient Jungle" -- Ancient Jungle,Coral Kingdom,Crystal Cave,Sacred Sands,Candy Land,Sinister Sewers,Magical Mushrooms,Space Base,Daring Dojo,Cryptic Castle,Santa's Workshop,Ice Palace,Frenzy Factory,Fiery Fortress, Danger Depths, Poison Prison,
_G.Difficulty = 'Easy' -- Easy,Medium,Hard,Demon,Impossible
_G.GameMode = 'Classic' -- Classic,Uncapped,Endless,Endless Uncapped,Minibosses
_G.Privacy = 'Solo' --Solo,Friends

-- Misc --
_G.Instakill = true -- it make your game lag and sometime it will break the game

_G.DestroyMap = true
_G.AutoMedKit = true
_G.AutoChest = true

-- Webhook --
_G.Webhook = { -- sometime it's broken (when using Instakill in "Endless/Endless Uncapped" gamemode)
    Enabled = false, -- true/false
    webhookLink = 'https://discord.com/api/webhooks/',
    PingForRarity = {
        ['Common'] = false,
        ['Rare'] = true, 
        ['Legendary'] = true, 
        ['Mythical'] = true, 
        ['Ultimate'] = true 
    },
}

-- Auto Sell --
_G.AutoSell = { -- be careful with this shit autosell
    Enabled = false, -- true/false
    ['Common'] = true, 
    ['Rare'] = false, 
    ['Legendary'] = false, 
    ['Mythical'] = false, 
    ['Ultimate'] = false
}

-- AutoUpgrade, AutoEquip ?
