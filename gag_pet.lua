--//--CF cu
script_key = _G.Key
repeat task.wait() until game.Players.LocalPlayer and game:IsLoaded()
task.wait(3)
_G.Config = {
    AutoFarm = true,
    Hide_Inventory = getgenv().Config.Hide_Inventory, --Less lag
    DelaySell = 5,
    BoostFps = getgenv().Config.BoostFps,
    AutoSkipLoad = true,
    BlackScreen = getgenv().Config.BlackScreen,
    AutoCollectDropSeed = true,
    Rejoin = {
        RejoinTime = 300, --minutes
        Enable = false
    },
    Webhook = {
        Url = "",
        Device = "PC1",
        ResendTime = 300, -- seconds
        Enable = true,
    },
    Notify = {
        Url = getgenv().Config.Notify.url,
        PetWebhook = getgenv().Config.Notify.PetWebhook,
        Enable = getgenv().Config.Notify.Enabled,
        PingEveryone = getgenv().Config.Notify.PingEveryone
    },
    Fps = {
        FpsLock = getgenv().Config.FpsLock.Fps,
        Enable = getgenv().Config.FpsLock.Enabled,
    },
    IgnoreBuy = { -- Auto skip buy 
        Ignorelist = {"Carrot", "Tomato", "Blueberry", "Strawberry"},
        MinMoneyToIgnore = 1000000,
        AutoIgnoreBuy = true
    },
    Favorite = { --Auto Ignore Sell 
        ListTreeFavorite = {},
        AutoFavoritePlant = true,
        ListPetFavorite = {"Kitsune","Butterfly","Dragonfly","Capybara","Ostrich","Mimic Octopus"},
        AutoFavoritePet = true
    },
    Misc = {
        AutoAcceptGift = true,
        Seedpacklist = {
            "Normal Seed Pack"
        },
        AutoUseSeedPack = true
    },
    Egg = {
        RarityEggToBuy = {
          "Mythical Egg",
          "Bug Egg",
          "Paradise Egg",
          "Rare Summer Egg"
        },
        AutoBuyEgg = true,
        HatchEgg = true,
        Place = {
            "Common Egg",
            "Zen Egg",
            "Primal Egg",
            "Dinosaur Egg",
            "Oasis Egg",
            "Anti Bee Egg",
            "Paradise Egg",
            "Night Egg",
            "Bug Egg",
            "Rare Summer Egg",
        },
        AutoPlaceEgg = true
    },
    Pet = {
        LockPet = {
            Weight = 4, --kg
            Enable = true
        },
        EquipList = getgenv().Config.KeepPet,
        AutoEquipPet = true,
        AutoSellPetInventory = getgenv().Config.AutoSellOther--Just sell the pets not in the equip list/ Chỉ sell pet ko ở trong EquipList 
    },
    Gear = {
        BuyGearList = {"Watering Can","Basic Sprinkler",
                    "Advanced Sprinkler", "Godly Sprinkler", "Master Sprinkler"},
        AutoBuy = true,
        UseGear = {
            WateringCan = true,
            BasicSprinkler = true,
            AdvancedSprinkler = true,
            GodlySprinkler = false,
            MasterSprinkler = false
        }
    },
    Delete = {
        LimitPlants = 300,
        Destroylist = {"Blueberry", "Strawberry", "Carrot", "Tomato"},
        AutoDestroy = true
    },
    Event = {
        Zen = {
            AutoGetChi = true,
            Shop = {
                "Zen Seed Pack",
                "Zen Egg"
            },
            AutoTrade = true,
            AutoZenQuest = true,
            AutoFarmKitsune = getgenv().Config.AutoFarmKitsune,
        }
    }
}
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/7ef35de1549030417ef54a1c6622915b.lua"))()
