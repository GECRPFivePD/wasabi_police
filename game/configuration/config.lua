-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------
local seconds, minutes = 1000, 60000
Config = {}

-------------------------------------------------------------------
-- TO MODIFY NOTIFICATIONS TO YOUR OWN CUSTOM NOTIFICATIONS:-------
-------------- Navigate to wasabi_bridge/customize/ ---------------
-------------------------------------------------------------------
Config.CheckForUpdates = true -- Check for updates? Who would not want to know updates!?

-- Language Options are
-- 'en' (English)
-- 'fr' (French)
-- 'cn' (Chinese Simplified)
-- 'tw' (Chinese Traditional)
-- 'de' (German)
-- 'it' (Italian)
-- 'jp' (Japanese)
-- 'ko' (Korean)
-- 'pl' (Polish)
-- 'pt' (Portuguese)
-- 'es' (Spanish)
-- 'hi' (Hindi)
-- 'nl' (Dutch)
-- 'da' (Danish)
-- 'cs' (Czech)
-- If you would like us to add a language, join our discord and create a ticket!
-- All locale strings can be found in /game/configuration/locales/
Config.Language = 'en'
Config.UIColor = '#0390fc'     -- Can be 'red', 'blue', or a hex '#FF0000'
Config.JailUIColor = '#0390fc' -- Can be 'red', 'blue', or a hex '#FF0000'

Config.jobMenu = 'F6'          -- Default job menu key
Config.useTarget = true        -- Enable target for police functions (Supports ox_target / qb-target)
Config.MobileMenu = {          -- THIS WILL USE A REGULAR MENU RATHER THAN A CONTEXT STYLE MENU!
    enabled = false,           -- Use a mobile menu rather than context? (Use arrow keys to navigate menu rather than mouse)
    position =
    'bottom-right'             -- Choose where menu is positioned. Options : 'top-left' or 'top-right' or 'bottom-left' or 'bottom-right'
}
Config.UseRadialMenu = false   -- Enable use of radial menu built in to ox_lib? (REQUIRES OX_LIB - Editable in client/radial.lua)

Config.customCarlock = true   -- If you use wasabi_carlock OR qb-carlock set to true(Add your own carlock system in wasabi_bridge/customize/client/carlock.lua)
Config.billingSystem =
'qb'                      -- Current options: false (Disabled) / 'default' (For built-in System)/'esx' (For esx_billing) / 'qb' (QBCore) / 'okok' (For okokBilling) (Easy to add more/fully customize in client/cl_customize.lua)

--ONLY IF USING 'default' BILLING SYSTEM
Config.billingData = {
    chargeAccount = 'bank', --Cash or bank (The default method to charge player)

    -- Credit police society for fines?
    -- (If true, fines will be credited to whichever police job sent the fine)
    -- (If false, fines will be deducted from the player but credited to no where)
    -- (Set to string of specific account if you wish for a singular account to receive all fine recoveries)
    creditSociety = true,

    fines = { --Fine presets
        { label = 'Attempt Robbery of Shop', amount = 1200 },
        { label = 'Attempt Robbery of Bank', amount = 2400 },
        { label = 'On-Duty Crime',           amount = 10000 },
        { label = 'Driving On Off-Road',     amount = 2200 },
        { label = 'Anti Gravity',            amount = 4200 },
    }
}

Config.OldQBManagement = false -- If you use older qb-management(Unrelated to ESX)

Config.AdvancedParking = false -- Delete vehicles with their exports(Script named advanced parking)

Config.Jail = {
    enabled = true,                          -- Enable jail feature?
    input = true,                            -- Enable input? Some needs it
    jail = '',                               -- Current options: 'qb' (For qb-prison) / 'rcore' (For rcore-prison) / 'tk_jail' (For tk_jail) / 'hd_jail' (For hd_jail) / 'myPrison' (For myPrison) / 'qalle-jail' (For qalle-jail) / 'plouffe ' (For Plouffe Jail) / 'mx' (For mxJail) / 'custom' (For custom)
    BuiltInPrison = {
        enabled = true,                      -- Enable built-in prison system?
        persistentJail = true,               -- Persistent jail? (If false, jail will be reset on reload)
        coords = vec3(1845.0, 2585.0, 45.0), -- Coords of prison
        spawn = {
            { coords = vec4(1745.77, 2489.61, 50.41, 212.01) },
            { coords = vec4(1751.86, 2492.73, 50.44, 213.77) },
            { coords = vec4(1760.82, 2498.14, 50.42, 208.26) },
            { coords = vec4(1754.85, 2494.59, 45.82, 212.49) },
            { coords = vec4(1748.84, 2491.35, 45.80, 203.43) }
        },
        release = vec4(1845.0, 2585.0, 45.0, 0.0), -- Coords of released
        jailOutfit = {
            male = {                               -- Male variation
                clothing = {
                    -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                    -- https://docs.fivem.net/natives/?_0xD4F7B05C
                    { component = 11, drawable = 5,  texture = 2 }, -- Torso
                    { component = 8,  drawable = 15, texture = 0 }, -- Shirt
                    { component = 4,  drawable = 6,  texture = 1 }, -- Pants
                    { component = 6,  drawable = 16, texture = 7 }, -- Shoes
                    { component = 3,  drawable = 5,  texture = 0 }, -- Arms
                },
                props = {
                    -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                    -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                    --    { component = 0, drawable = 0, texture = 0 }, -- Hats
                }
            },
            female = {
                clothing = {
                    -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                    -- https://docs.fivem.net/natives/?_0xD4F7B05C
                    { component = 11, drawable = 4,  texture = 0 }, -- Torso
                    { component = 8,  drawable = 15, texture = 0 }, -- Shirt
                    { component = 4,  drawable = 25, texture = 0 }, -- Pants
                    { component = 6,  drawable = 16, texture = 4 }, -- Shoes
                    { component = 3,  drawable = 4,  texture = 0 }, -- Arms
                },
                props = {
                    -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                    -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                    --    { component = 0, drawable = 0, texture = 0 }, -- Hats
                }
            }
        },

    },
}
-- NOTE: If using qb-prison, you must make one small change to qb-prison.
-- SEE https://docs.wasabiscripts.com/scripts/wasabi_police/customizations#qb-prison-integration

Config.searchPlayers = true     -- Allow police jobs to search players for items (Must have inventory in bridge or one already supported in cl_customize.lua - or add your own!)
Config.weaponsAsItems = true     -- (If you're unsure leave as true!)This is typically for older ESX and inventories that still use weapons as weapons and not items

Config.spikeStripsEnabled = true -- Enable functionality of spike strips (Disable if you use difference script for spike strips)

--[[ These resources can trigger:
    wasabi_police:handcuffPlayer
    wasabi_police:escortPlayer
    wasabi_police:inVehiclePlayer
    wasabi_police:outVehiclePlayer
]]
Config.AllowedResources = {
    'qb-core',
    'qb-radialmenu', -- For civilians to be able to use radial menu features(Already had compatibility without edit)
}

Config.AllowedJobs = { -- THIS HAS NOTHING TO DO with Config.policeJobs, only with triggering events above
    --'bloods'
}

Config.GrantWeaponLicenses = {
    enabled = true,          -- If you want police to have option to grant/revoke weapons licenses
    license_name = 'weapon', -- Name of license
    minGrade = 0,            -- Min grade to use this function
    menuPosition =
    'bottom-right'           -- Choose where menu of player select is positioned. Options : 'top-left' or 'top-right' or 'bottom-left' or 'bottom-right'
}

Config.CCTVCameras = { -- CCTV Cameras
    enabled = true,     -- Enable CCTV Cameras?
    jobLock = 'police', -- Job lock? or access to all police jobs by using false
    saveToDatabase = true, -- Save CCTV data to database? (If false, data will be stored in server memory/reset on server restarts)

    jobs = {            -- Jobs & minimum ranks that can add/modify/delete CCTV Cameras
        -- Must be in Config.policeJobs as well
        police = 0,     -- Job 'police' with minimum rank 0
        --        sheriff = 2,    -- Job 'sheriff' with minimum rank 2
    },
    destoryable = true, -- Can players destroy CCTV Cameras?
    blip = {
        enabled = true,      -- Enable blips for CCTV Cameras?
        label = 'CCTV Camera', -- Blip label
        sprite = 604,         -- Blip sprite
        color = 5,            -- Blip color
        scale = 0.5,          -- Blip scale
        short = false,        -- Short range blip?
    },

    EnabledKeys = {  --Enabled keys while in camera view
      --W A S D BackSpace 
        32, 34, 8, 9, 177
    },

    options = {
        {
            label = 'CCTV Camera #1', -- Label of CCTV Camera
            prop = 'prop_cctv_cam_01a', -- Prop name
        },
        {
            label = 'CCTV Camera #2',
            prop = 'prop_cctv_cam_01b',
        },
        {
            label = 'CCTV Camera #3',
            prop = 'prop_cctv_cam_06a',
        },
        {
            label = 'CCTV Camera #4',
            prop = 'prop_cctv_cam_05a',
        },
    },
    locations = { -- Locations of CCTV Cameras
        enabled = true, -- Enable locations of CCTV Cameras?
        data = {
        {
   
            name = 'Shop (Innocence Blvd)', -- Label of CCTV Camera
            prop = 'prop_cctv_cam_06a', -- Prop name
            coords = vector3(23.8389778137207, -1348.9283447265626, 31.53925323486328),  --coords":{"x":23.8389778137207,"y":-1348.9283447265626,"z":31.53925323486328}
            heading = 119.99991607666016, --heading
        },
        {
            name = 'Shop (Inseno Road)',
            prop = 'prop_cctv_cam_06a',
            coords = vector3(-3037.25, 584.399169921875, 9.89759731292724),
            heading = 224.99984741210938,
        },
        {
            name = 'Shop (Barbareno Road)',
            prop = 'prop_cctv_cam_06a',
            coords = vector3(-3240.68603515625, 999.1280517578125, 14.87293338775634),
            heading = 199.9998016357422,
        },
        {
            name = 'Shop (Great Ocean Highway)',
            prop = 'prop_cctv_cam_06a',
            coords = vector3(1726.5582275390626, 6414.02783203125, 37.07946395874023),
            heading = 94.99994659423828,
        },
        {
            name = 'Shop (Grape Seed Main Street)',
            prop = 'prop_cctv_cam_06a',
            coords = vector3(1706.2977294921876, 4926.40576171875, 44.10588836669922),
            heading = 239.99984741210938,
        },
        {
            name = 'Shop (Alhambra Drive)',
            prop = 'prop_cctv_cam_06a',
            coords = vector3(1960.42431640625, 3738.34716796875, 34.38598251342773),
            heading = 149.9998321533203,
        },
        {
            name = 'Shop (Route 68)',
            prop = 'prop_cctv_cam_06a',
            coords = vector3(549.0037841796875, 2672.68896484375, 43.89537048339844),
            heading = 304.99969482421877,
        },
        {
            name = 'Shop (Senora Freeway)',
            prop = 'prop_cctv_cam_06a',
            coords = vector3(2679.138671875, 3278.020263671875, 57.58337097167969),
            heading = 179.999755859375,
        },
        {
            name = 'Shop (Palomino Freeway)',
            prop = 'prop_cctv_cam_06a',
            coords = vector3(2558.8310546875, 380.1410827636719, 110.66519927978516),
            heading = 209.9998016357422,
        },
        {
            name = 'Shop (Clinton Avenue)',
            prop = 'prop_cctv_cam_06a',
            coords = vector3(371.39739990234377, 324.99755859375, 105.60862731933594),
            heading = 104.99993133544922,
        },
        {
            name = 'Shop (North Rockford Drive)',
            prop = 'prop_cctv_cam_06a',
            coords = vector3(-1827.2593994140626, 793.8814086914063, 140.25299072265626),
            heading = 44.99998092651367,
        },
        {
            name = 'Shop (Grove Street)',
            prop = 'prop_cctv_cam_06a',
            coords = vector3(-47.95944213867187, -1750.7666015625, 31.46323776245117),
            heading = 324.99945068359377,
        },
        {
            name = 'Shop (Ginger Street)',
            prop = 'prop_cctv_cam_06a',
            coords = vector3(-711.623779296875, -908.9114379882813, 21.25783157348632),
            heading = 0.0,
        },
        {
            name = 'Shop (Mirror Park Blvd)',
            prop = 'prop_cctv_cam_06a',
            coords = vector3(1158.4505615234376, -319.10296630859377, 71.24732971191406),
            heading = 14.99969005584716,
        },
    }
}

}


Config.RadarPosts = {           -- Radar posts for speed detection

    enabled = true,             -- Enable radar posts (Shows option in job menu for approved jobs)?
    saveToDatabase = true,      -- Save radar data to database? (If false, data will be stored in server memory/reset on server restarts)

    disableCameraFlash = false, -- Disable camera flash effect when player is caught speeding?

    measurement = 'mph',        -- Measurement of speed (Options: 'mph' / 'kmh')

    jobs = {                    -- Jobs & minimum ranks that can add/modify/delete radar posts
        -- Must be in Config.policeJobs as well
        police = 0,             -- Job 'police' with minimum rank 0
        sheriff = 2,            -- Job 'sheriff' with minimum rank 2
    },

    whitelistJobs = { -- Jobs that do not get fined for speeding
        -- Do not worry about jobs from Config.policeJobs, they are automatically whitelisted
        'ambulance',

    },

    chargeAccount = 'bank',       -- Cash or bank (The default method to charge player
    allowNegativeBalance = false, -- Allow players to go into negative balance? (If false, player must have enough money to pay fine)

    -- Credit police society for fines?
    -- (If true, fines will be credited to whichever police job placed the radar post that detected speeding)
    -- (If false, fines will be deducted from the speeder but credited to no where)
    -- (Set to string of specific account if you wish for a singular account to receive all fine recoveries)
    creditSociety = true,

    thresholds = {   -- Speed thresholds for fines
        [5] = 50,    -- 5 over = $50 fine
        [10] = 100,  -- 10 over = $100 fine
        [20] = 500,  -- 20 over = $500 fine
        [30] = 1000, -- 30 over = $1000 fine
        [40] = 2000, -- 40 over = $2000 fine
        [50] = 5000, -- 50 over = $5000 fine
    },

    blip = {
        enabled = false,      -- Enable blips for radar posts?
        label = 'Radar Post', -- Blip label
        sprite = 184,         -- Blip sprite
        color = 5,            -- Blip color
        scale = 0.5,          -- Blip scale
        short = false,        -- Short range blip?
    },

    options = {
        {
            label = 'Radar Post #1',     -- Label of radar post
            prop = 'prop_cctv_pole_01a', -- Prop name
        },
        {
            label = 'Radar Post #2',
            prop = 'prop_cctv_pole_02',
        },
        {
            label = 'Radar Post #3',
            prop = 'prop_cctv_pole_03',
        },
        {
            label = 'Radar Post #4',
            prop = 'prop_cctv_pole_04',
        },
    }
}

Config.GSR = {                 -- Gunshot residue settings
    enabled = true,           -- Enabled?
    cleanInWater = true,       -- Can clean GSR while in water?
    timeToClean = 5 * seconds, -- How long to clean GSR in water if enabled
    autoClean = 600,           -- (IN SECONDS)How long before residue clears itself? Set to false if undesired to auto clean GSR
    command = 'gsr'            -- Command for testing for GSR? Set to false if undesired
}

Config.tackle = {
    enabled = true,    -- Enable tackle?
    policeOnly = true, -- Police jobs only use tackle?
    hotkey = 'G'       -- What key to press while sprinting to start tackle of target
}

Config.seizeCash = {  -- ONLY FOR QBCORE WITHOUT CASH AS ITEM
    enabled = false,  -- Enabled?
    item = 'moneybag' -- Item to add after seizedCash
}

Config.handcuff = {                             -- Config in regards to cuffing
    defaultCuff = 'hard',                       -- Default cuff type (Options: 'soft' / 'hard') Changing this will be the default hotkey cuff type
    persistentCuff = true,                      -- Verify player's cuffed status during login (Install '_EXTRA_ESX_INSTALL/ESX_PERSISTENT_CUFF.sql' if using ESX)
    timer = 20 * minutes,                       -- Time before player is automatically unrestrained(Set to false if not desired)
    hotkey = 'J',                               -- What key to press to handcuff people(Set to false for no hotkey)
    skilledEscape = {
        enabled = true,                         -- Allow criminal to simulate resisting by giving them a chance to break free from cuffs via skill check
        difficulty = { 'easy', 'easy', 'easy' } -- Options: 'easy' / 'medium' / 'hard' (Can be stringed along as they are in config)
    },
    cuffItem = {                                -- Have handcuffs as usable item? (ITEM NAME MUST BE IN ITEMS / YOU MUST ADD YOURSELF)
        enabled = false,                        -- Enable a handcuff usable item?? Must be in items table/database with name defined below
        required = true,                        -- Requires handcuff item to be in inventory when any handcuff function is used
        item = 'handcuffs'                      -- Item name (DONT FORGET to make sure its in your items)
    },
    lockpicking = {                             -- Lockpicking someone else out of handcuffs
        enabled = false,                        -- Enable handcuffs to be able to be lockpicked off(MUST HAVE LOCKPICK ITEM IN ITEMS)
        item = 'bobby_pin',
        breakChance = 50,                       -- Chance of lockpick breaking if failed (Set to 100 for 100% or 0 for never breaking)
        difficulty = { 'easy', 'easy', 'easy' } -- Options: 'easy' / 'medium' / 'hard' (Can be stringed along as they are in config)
    }
}

Config.policeJobs = { -- Police jobs
    'police',
    --    'sheriff'
    'reporter'
}

Config.GPSBlips = {
    enabled = false,     -- Enabled?
    item = false,        -- Item required? Note: You have to use it then
    sprites = {
        none = 443,      -- Blip for when not in a vehicle
        car = 672,       -- Blip for when in vehicles
        bike = 226,      -- Blip for when on bikes
        boat = 427,      -- Blip for when in boats
        helicopter = 43, -- Blip for when in helicopters
        plane = 307,     -- Blip for when in planes
    },
    settings = {
        color = 3,
        scale = 0.75,
        short = false,
        category = 7
    }
}

Config.Props = { -- What props are avaliable in the "Place Objects" section of the job menu

    {
        title = 'Barrier',             -- Label
        description = '',              -- Description (optional)
        model = `prop_barrier_work05`, -- Prop name within `
        freeze = true,                 -- Make prop unmovable
        groups = {                     -- ['job_name'] = min_rank
            ['police'] = 0,
            --            ['sheriff'] = 0,
        }
    },
    {
        title = 'Barricade',
        description = '',
        model = `prop_mp_barrier_01`,
        freeze = true, -- Make prop unmovable
        groups = {
            ['police'] = 0,
            --            ['sheriff'] = 0,
        }
    },
    {
        title = 'Traffic Cones',
        description = '',
        model = `prop_roadcone02a`,
        freeze = false, -- Make prop unmovable
        groups = {
            ['police'] = 0,
            --            ['sheriff'] = 0,
        }
    },
    {
        title = 'Spike Strip',
        description = '',
        model = `p_ld_stinger_s`,
        freeze = true, -- Make prop unmovable
        groups = {
            ['police'] = 0,
            --            ['sheriff'] = 0,
        }
    },

}

Config.Locations = {
    MissionRowPD = {
        blip = {
            enabled = true,
            coords = vec3(425.1762, -978.2207, 30.711666),
            sprite = 60,
            color = 29,
            scale = 1.0,
            string = 'Mission Row PD'
        },


        clockInAndOut = {
            enabled = true,                        -- Enable clocking in and out at a set location? (If using ESX you must have a off duty job for each e.x. offpolice for police offsheriff for sheriff AND have grades for each pd grade - QBCORE REQUIRES NOTHING)
            jobLock = 'police',                    -- This must be set to which job will be utilizing (ESX MUST HAVE OFF DUTY JOB / GRADES FOR THIS - ex. offpolice or offsheriff)
            coords = vec3(441.91665, -981.9968, 30.689588), -- Location of where to go on and off duty(If not using target)
            label = '[E] - Go On/Off Duty',        -- Text to display(If not using target)
            distance = 3.0,                        -- Distance to display text UI(If not using target)
            target = {
                enabled = true,                   -- If enabled, the location and distance above will be obsolete
                label = 'Go On/Off Duty',
                coords = vec3(441.91665, -981.9968, 30.689588),
                heading = 91.06,
                distance = 2.5,
                width = 2.0,
                length = 1.0,
                minZ = 30.69 - 0.9,
                maxZ = 30.69 + 0.9
            }
        },

        bossMenu = {
            enabled = true,                        -- Enable boss menu?
            jobLock = 'police',                    -- Lock to specific police job? Set to false if not desired
            coords = vec3(461.40374, -986.1578, 30.791069), -- Location of boss menu (If not using target)
            label = '[E] - Access Boss Menu',      -- Text UI label string (If not using target)
            distance = 3.0,                        -- Distance to allow access/prompt with text UI (If not using target)
            target = {
                enabled = true,                   -- If enabled, the location and distance above will be obsolete
                label = 'Access Boss Menu',
                coords = vec3(461.40374, -986.1578, 30.791069),
                heading = 179.00994,
                distance = 2.0,
                width = 2.0,
                length = 1.0,
                minZ = 30.73 - 0.9,
                maxZ = 30.73 + 0.9
            }
        },

        armoury = {
            enabled = true,                                                                              -- Set to false if you don't want to use
            coords = vec3(480.32, -996.67, 30.69 - 0.9),                                                 -- Coords of armoury
            heading = 86.95,                                                                             -- Heading of armoury NPC
            ped = 's_f_y_cop_01',                                                                        -- Ped model or false for no ped
            label = '[E] - Access Armoury',                                                              -- String of text ui
            jobLock = 'police',                                                                          -- Allow only one of Config.policeJob listings / Set to false if allow all Config.policeJobs
            weapons = {
                [0] = {                                                                                  -- Grade number will be the name of each table(this would be grade 0)
                    { name = 'WEAPON_PISTOL_MK2',     label = 'PD Pistol',      multiple = false, price = 0 }, -- Set price to false if undesired
                    { name = 'WEAPON_NIGHTSTICK', label = 'Night Stick', multiple = false, price = 0 },
                    { name = 'WEAPON_STUNGUN', label = 'Taser X2 ', multiple = false, price = 0 },
                    { name = 'ammo-9' , label = '9mm Ammo', multiple = true, price = 0 }, -- Set multiple to true if you want ability to purchase more than one at a time
                    { name = 'taser_cartridge', label = 'Taser Cartidge', multiple = true, price = 0 },
                    { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = 0 },
                    { name = 'WEAPON_FLASHLIGHT', label = 'Flashlight', multiple = false, price = 0 },
                    { name = 'uvlight', label = 'UV Light', multiple = false, price = 0 },
                    { name = 'alcoholmeter', label = 'PBT', multiple = false, price = 0 },  
                },
                [1] = { -- This would be grade 1
                    { name = 'WEAPON_PISTOL_MK2', label = 'PD Pistol', multiple = false, price = 0 },
                    { name = 'WEAPON_NIGHTSTICK',   label = 'Night Stick',   multiple = false, price = 0 },
                    { name = 'WEAPON_STUNGUN', label = 'Taser X2 ', multiple = false, price = 0 },
                    { name = 'ammo-9', label = '9mm Ammo', multiple = true, price = 0 },
                    { name = 'taser_cartridge', label = 'Taser Cartidge', multiple = true, price = 0 },
                    { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = 0 },
                    { name = 'WEAPON_FLASHLIGHT', label = 'Flashlight', multiple = false, price = 0 },
                    { name = 'uvlight', label = 'UV Light', multiple = false, price = 0 },
                    { name = 'alcoholmeter', label = 'PBT', multiple = false, price = 0 },
                },
                [2] = { -- This would be grade 2
                    { name = 'WEAPON_PISTOL_MK2', label = 'PD Pistol', multiple = false, price = 0 },
                    { name = 'WEAPON_NIGHTSTICK',   label = 'Night Stick',   multiple = false, price = 0 },
                    { name = 'WEAPON_STUNGUN', label = 'Taser X2 ', multiple = false, price = 0 },
                    { name = 'WEAPON_CARBINERIFLE_MK2', label = 'PD AR', multiple = false, price = 0 },
                    { name = 'ammo-9', label = '9mm Ammo', multiple = true, price = 0 }, -- Set multiple to true if you want ability to purchase more than one at a time
                    { name = 'ammo-rifle2', label = '7.62 Ammo', multiple = true, price = 0 }, -- Example
                    { name = 'taser_cartridge', label = 'Taser Cartidge', multiple = true, price = 0 },
                    { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = 0 }, -- Example
                    { name = 'WEAPON_FLASHLIGHT', label = 'Flashlight', multiple = false, price = 0 },
                    { name = 'uvlight', label = 'UV Light', multiple = false, price = 0 },
                    { name = 'alcoholmeter', label = 'PBT', multiple = false, price = 0 },
                },
                [3] = { -- This would be grade 3
                    { name = 'WEAPON_PISTOL_MK2', label = 'PD Pistol', multiple = false, price = 0 },
                    { name = 'WEAPON_NIGHTSTICK',   label = 'Night Stick',   multiple = false, price = 0 },
                    { name = 'WEAPON_STUNGUN', label = 'Taser X2 ', multiple = false, price = 0 },
                    { name = 'WEAPON_CARBINERIFLE_MK2', label = 'PD AR', multiple = false, price = 0 },
                    { name = 'ammo-rifle2', label = '7.62 Ammo', multiple = true, price = 0 },
                    { name = 'ammo-9', label = '9mm Ammo', multiple = true, price = 0 }, -- Set multiple to true if you want ability to purchase more than one at a time
                    { name = 'taser_cartridge', label = 'Taser Cartidge', multiple = true, price = 0 },
                    { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = 0 },
                    { name = 'WEAPON_FLASHLIGHT', label = 'Flashlight', multiple = false, price = 0 },
                    { name = 'uvlight', label = 'UV Light', multiple = false, price = 0 },
                    { name = 'alcoholmeter', label = 'PBT', multiple = false, price = 0 },
                },
            }
        },

        cloakroom = {
            enabled = true,                        -- WILL NOT SHOW IN QBCORE INSTEAD USE QB-CLOTHING CONFIG! Set to false if you don't want to use (Compatible with esx_skin & wasabi fivem-appearance fork)
            jobLock = 'police',                    -- Allow only one of Config.policeJob listings / Set to false if allow all Config.policeJobs
            coords = vec3(462.88479, -996.6181, 30.689558), -- Coords of cloakroom
            label = '[E] - Change Clothes',        -- String of text ui of cloakroom
            range = 2.0,                           -- Range away from coords you can use.
            uniforms = {                           -- Uniform choices
                [1] = {                            -- Order it will display
                    label = 'Patrol',              -- Name of outfit that will display in menu
                    minGrade = 0,                  -- Min grade level that can access? Set to 0 or false for everyone to use
                    male = {                       -- Male variation
                        clothing = {
                            -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                            -- https://docs.fivem.net/natives/?_0xD4F7B05C
                            { component = 11, drawable = 555, texture = 0 }, -- Torso (main shirt)
                            { component = 4,  drawable = 204, texture = 0 }, -- Pants
                            { component = 6,  drawable = 111, texture = 0 }, -- Shoes
                            { component = 3,  drawable = 39, texture = 0 }, -- Arms
                            { component = 9,  drawable = 80, texture = 0 }, -- Body Armour (vest/no vest)
                            { component = 8,  drawable = 250, texture = 1 }, -- Undershirt (taser)
                            { component = 7,  drawable = 213, texture = 0 }, -- Scarfs/chains
                            
                        },
                        props = {
                            -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                            -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                            { component = 0, drawable = 223, texture = 0 }, -- Hats
                            --{ component = 0, drawable = 223, texture = 0 }, -- Glasses
                        }
                    },
                    female = {
                        clothing = {
                            -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                            -- https://docs.fivem.net/natives/?_0xD4F7B05C
                            { component = 11, drawable = 4,  texture = 0 }, -- Torso
                            { component = 8,  drawable = 15, texture = 0 }, -- Shirt
                            { component = 4,  drawable = 25, texture = 0 }, -- Pants
                            { component = 6,  drawable = 16, texture = 4 }, -- Shoes
                            { component = 3,  drawable = 4,  texture = 0 }, -- Arms
                        },
                        props = {
                            -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                            -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                            --    { component = 0, drawable = 0, texture = 0 }, -- Hats
                        }
                    }
                },
                [2] = {                            -- Order it will display
                    label = 'Patrol 2',              -- Name of outfit that will display in menu
                    minGrade = 0,                  -- Min grade level that can access? Set to 0 or false for everyone to use
                    male = {                       -- Male variation
                        clothing = {
                            -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                            -- https://docs.fivem.net/natives/?_0xD4F7B05C
                            { component = 11, drawable = 555, texture = 0 }, -- Torso (main shirt)
                            { component = 4,  drawable = 204, texture = 0 }, -- Pants
                            { component = 6,  drawable = 111, texture = 0 }, -- Shoes
                            { component = 3,  drawable = 39, texture = 0 }, -- Arms
                            { component = 9,  drawable = 65, texture = 0 }, -- Body Armour (vest/no vest)
                            { component = 8,  drawable = 253, texture = 0 }, -- Undershirt (taser)
                            { component = 7,  drawable = 213, texture = 0 }, -- Scarfs/chains
                            
                        },
                        props = {
                            -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                            -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                            { component = 0, drawable = 223, texture = 0 }, -- Hats
                            --{ component = 0, drawable = 223, texture = 0 }, -- Glasses
                        }
                    },
                    female = {
                        clothing = {
                            -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                            -- https://docs.fivem.net/natives/?_0xD4F7B05C
                            { component = 11, drawable = 4,  texture = 0 }, -- Torso
                            { component = 8,  drawable = 15, texture = 0 }, -- Shirt
                            { component = 4,  drawable = 25, texture = 0 }, -- Pants
                            { component = 6,  drawable = 16, texture = 4 }, -- Shoes
                            { component = 3,  drawable = 4,  texture = 0 }, -- Arms
                        },
                        props = {
                            -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                            -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                            --    { component = 0, drawable = 0, texture = 0 }, -- Hats
                        }
                    }
                },
               --[[ [3] = {              -- Order it will display
                    label = 'Chief', -- Name of outfit that will display in menu
                    minGrade = 0,    -- Min grade level that can access? Set to 0 or false for everyone to use
                    male = {         -- Male variation
                        clothing = {
                            -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                            -- https://docs.fivem.net/natives/?_0xD4F7B05C
                            { component = 11, drawable = 15, texture = 0 }, -- Torso
                            { component = 8,  drawable = 58, texture = 0 }, -- Shirt
                            { component = 4,  drawable = 35, texture = 0 }, -- Pants
                            { component = 6,  drawable = 24, texture = 0 }, -- Shoes
                            { component = 3,  drawable = 15, texture = 0 }, -- Arms
                        },
                        props = {
                            -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                            -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                            --    { component = 0, drawable = 0, texture = 0 }, -- Hats
                        }
                    },
                    female = {
                        clothing = {
                            -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                            -- https://docs.fivem.net/natives/?_0xD4F7B05C
                            { component = 11, drawable = 4,  texture = 0 }, -- Torso
                            { component = 8,  drawable = 15, texture = 0 }, -- Shirt
                            { component = 4,  drawable = 25, texture = 0 }, -- Pants
                            { component = 6,  drawable = 16, texture = 4 }, -- Shoes
                            { component = 3,  drawable = 4,  texture = 0 }, -- Arms
                        },
                        props = {
                            -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                            -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                            --    { component = 0, drawable = 0, texture = 0 }, -- Hats
                        }
                    }
                },
                [4] = {              -- Order it will display
                    label = 'Chief', -- Name of outfit that will display in menu
                    minGrade = 0,    -- Min grade level that can access? Set to 0 or false for everyone to use
                    male = {         -- Male variation
                        clothing = {
                            -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                            -- https://docs.fivem.net/natives/?_0xD4F7B05C
                            { component = 11, drawable = 15, texture = 0 }, -- Torso
                            { component = 8,  drawable = 58, texture = 0 }, -- Shirt
                            { component = 4,  drawable = 35, texture = 0 }, -- Pants
                            { component = 6,  drawable = 24, texture = 0 }, -- Shoes
                            { component = 3,  drawable = 15, texture = 0 }, -- Arms
                        },
                        props = {
                            -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                            -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                            --    { component = 0, drawable = 0, texture = 0 }, -- Hats
                        }
                    },
                    female = {
                        clothing = {
                            -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                            -- https://docs.fivem.net/natives/?_0xD4F7B05C
                            { component = 11, drawable = 4,  texture = 0 }, -- Torso
                            { component = 8,  drawable = 15, texture = 0 }, -- Shirt
                            { component = 4,  drawable = 25, texture = 0 }, -- Pants
                            { component = 6,  drawable = 16, texture = 4 }, -- Shoes
                            { component = 3,  drawable = 4,  texture = 0 }, -- Arms
                        },
                        props = {
                            -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                            -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                            --    { component = 0, drawable = 0, texture = 0 }, -- Hats
                        }
                    }
                },]]
            }
        },

        -- Personal Locker. Supports inventories: ox_inventory, qb-inventory, and qs-inventory
        --        Custom inventories can easily be added in wasabi_bridge/inventories/
        personalLocker = {
            enabled = true,                       -- Enable personal locker for this station?
            jobLock = 'police',                    -- Job lock?
            coords = vec3(461.16854, -1000, 30.689596), -- Area to prompt personal locker
            range = 2.0,                           -- Range it will prompt from coords above
            label = '[E] - Access Personal Locker',
            target = {
                enabled = true, -- If enabled, the location above will be obsolete
                label = 'Access Personal Locker',
                coords = vec3(461.16854, -1000, 30.689596),
                heading = 354.94,
                distance = 2.5,
                width = 2.0,
                length = 1.0,
                minZ = 30.69 - 0.9,
                maxZ = 30.69 + 0.9
            }
        },

        evidenceLocker = {
            enabled = true,                      -- Enable evidence locker for this station?
            jobLock = 'police',                   -- Job lock?
            coords = vec3(473.871, -990.6914, 26.27341), -- Area to prompt personal locker
            range = 2.0,                          -- Range it will prompt from coords above
            label = '[E] - Access Evidence Locker',
            target = {
                enabled = true, -- If enabled, the location above will be obsolete
                label = 'Access Evidence Locker',
                coords = vec3(473.871, -990.6914, 26.27341),
                heading = 266.23,
                distance = 2.5,
                width = 2.0,
                length = 1.0,
                minZ = 26.27 - 0.9,
                maxZ = 26.27 + 0.9
            }
        },


        vehicles = {                                   -- Vehicle Garage
            enabled = false,                            -- Enable? False if you have you're own way for medics to obtain vehicles.
            jobLock = 'police',                        -- Job lock? or access to all police jobs by using false
            zone = {
                 coords = vec3(460.4151, -984.0725, 43.685043), -- Area to prompt vehicle garage
                 range = 5.0,                           -- Range it will prompt from coords above
                 label = '[E] - Access Air Garage',
                 return_label = '[E] - Return Helio'
            },
            spawn = {
                --[[land = {
                    coords = vec3(458.78906, -992.4506, 25.700021), -- Coords of where land vehicle spawn/return
                    heading = 3.68
                },--]]
                air = {
                    coords = vec3(449.75845, -981.3812, 43.69139), -- Coords of where air vehicles spawn/return
                    heading = 89.932479
                }
            },
            options = {

                [0] = { -- [Cadet]                      -- Job grade as table name

                },

                [1] = { -- [Deputy I]

                },

                [2] = { -- [Deputy II]

                },

                [3] = { -- [Corporal]

                },

                [4] = { -- [Major]
                    ['polmav'] = {
                        label = 'Maverick',
                        category = 'air',
                    },
                },

                [5] = { -- [Lieutenant Colonel]
                    ['polmav'] = {
                        label = 'Maverick',
                        category = 'air',
                    },
                },

                [6] = { -- [Colonel]
                    ['polmav'] = {
                        label = 'Maverick',
                        category = 'air',
                    },
                },

                [7] = { -- [Under Sheriff]
                    ['polmav'] = {
                        label = 'Maverick',
                        category = 'air',
                    },
                },

                [8] = { -- [Sheriff]
                    ['polmav'] = {
                        label = 'Maverick',
                        category = 'air',
                    },
                },
            }
        }
    },
    DavisPD = {
        blip = {
            enabled = true,
            coords = vec3(382.28311, -1591.791, 29.284469),
            sprite = 60,
            color = 29,
            scale = 1.0,
            string = 'Davis PD'
        },

        clockInAndOut = {
            enabled = true,                        -- Enable clocking in and out at a set location? (If using ESX you must have a off duty job for each e.x. offpolice for police offsheriff for sheriff AND have grades for each pd grade - QBCORE REQUIRES NOTHING)
            jobLock = 'police',                    -- This must be set to which job will be utilizing (ESX MUST HAVE OFF DUTY JOB / GRADES FOR THIS - ex. offpolice or offsheriff)
            coords = vec3(377.13299, -1605.778, 30.197591), -- Location of where to go on and off duty(If not using target)
            label = '[E] - Go On/Off Duty',        -- Text to display(If not using target)
            distance = 3.0,                        -- Distance to display text UI(If not using target)
            target = {
                enabled = true,                   -- If enabled, the location and distance above will be obsolete
                label = 'Go On/Off Duty',
                coords = vec3(377.13299, -1605.778, 30.197591),
                heading = 91.06,
                distance = 2.5,
                width = 2.0,
                length = 1.0,
                minZ = 30.69 - 0.9,
                maxZ = 30.69 + 0.9
            }
        },

        bossMenu = {
            enabled = true,                        -- Enable boss menu?
            jobLock = 'police',                    -- Lock to specific police job? Set to false if not desired
            coords = vec3(359.39083, -1590.933, 31.051469), -- Location of boss menu (If not using target)
            label = '[E] - Access Boss Menu',      -- Text UI label string (If not using target)
            distance = 3.0,                        -- Distance to allow access/prompt with text UI (If not using target)
            target = {
                enabled = true,                   -- If enabled, the location and distance above will be obsolete
                label = 'Access Boss Menu',
                coords = vec3(359.39083, -1590.933, 31.051469),
                heading = 228.36648,
                distance = 2.0,
                width = 2.0,
                length = 1.0,
                minZ = 30.73 - 0.9,
                maxZ = 30.73 + 0.9
            }
        },

        armoury = {
            enabled = true,                                                                              -- Set to false if you don't want to use
            coords = vec3(365.53814, -1600.486, 24.443689),                                                 -- Coords of armoury
            heading = 331.08007,                                                                           -- Heading of armoury NPC
            ped = 's_f_y_cop_01',                                                                        -- Ped model or false for no ped
            label = '[E] - Access Armoury',                                                              -- String of text ui
            jobLock = 'police',                                                                          -- Allow only one of Config.policeJob listings / Set to false if allow all Config.policeJobs
            weapons = {
                [0] = {                                                                                  -- Grade number will be the name of each table(this would be grade 0)
                    { name = 'WEAPON_PISTOL_MK2',     label = 'PD Pistol',      multiple = false, price = 0 }, -- Set price to false if undesired
                    { name = 'WEAPON_NIGHTSTICK', label = 'Night Stick', multiple = false, price = 0 },
                    { name = 'WEAPON_STUNGUN', label = 'Taser X2 ', multiple = false, price = 0 },
                    { name = 'ammo-9' , label = '9mm Ammo', multiple = true, price = 0 }, -- Set multiple to true if you want ability to purchase more than one at a time
                    { name = 'taser_cartridge', label = 'Taser Cartidge', multiple = true, price = 0 },
                    { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = 0 },
                    { name = 'WEAPON_FLASHLIGHT', label = 'Flashlight', multiple = false, price = 0 },
                    { name = 'uvlight', label = 'UV Light', multiple = false, price = 0 },
                    { name = 'alcoholmeter', label = 'PBT', multiple = false, price = 0 },
                },
                [1] = { -- This would be grade 1
                    { name = 'WEAPON_PISTOL_MK2', label = 'PD Pistol', multiple = false, price = 0 },
                    { name = 'WEAPON_NIGHTSTICK',   label = 'Night Stick',   multiple = false, price = 0 },
                    { name = 'WEAPON_STUNGUN', label = 'Taser X2 ', multiple = false, price = 0 },
                    { name = 'ammo-9', label = '9mm Ammo', multiple = true, price = 0 },
                    { name = 'taser_cartridge', label = 'Taser Cartidge', multiple = true, price = 0 },
                    { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = 0 },
                    { name = 'WEAPON_FLASHLIGHT', label = 'Flashlight', multiple = false, price = 0 },
                    { name = 'uvlight', label = 'UV Light', multiple = false, price = 0 },
                    { name = 'alcoholmeter', label = 'PBT', multiple = false, price = 0 },
                },
                [2] = { -- This would be grade 2
                    { name = 'WEAPON_PISTOL_MK2', label = 'PD Pistol', multiple = false, price = 0 },
                    { name = 'WEAPON_NIGHTSTICK',   label = 'Night Stick',   multiple = false, price = 0 },
                    { name = 'WEAPON_STUNGUN', label = 'Taser X2 ', multiple = false, price = 0 },
                    { name = 'WEAPON_CARBINERIFLE_MK2', label = 'PD AR', multiple = false, price = 0 },
                    { name = 'ammo-9', label = '9mm Ammo', multiple = true, price = 0 }, -- Set multiple to true if you want ability to purchase more than one at a time
                    { name = 'ammo-rifle2', label = '7.62 Ammo', multiple = true, price = 0 }, -- Example
                    { name = 'taser_cartridge', label = 'Taser Cartidge', multiple = true, price = 0 },
                    { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = 0 }, -- Example
                    { name = 'WEAPON_FLASHLIGHT', label = 'Flashlight', multiple = false, price = 0 },
                    { name = 'uvlight', label = 'UV Light', multiple = false, price = 0 },
                    { name = 'alcoholmeter', label = 'PBT', multiple = false, price = 0 },
                },
                [3] = { -- This would be grade 3
                    { name = 'WEAPON_PISTOL_MK2', label = 'PD Pistol', multiple = false, price = 0 },
                    { name = 'WEAPON_NIGHTSTICK',   label = 'Night Stick',   multiple = false, price = 0 },
                    { name = 'WEAPON_STUNGUN', label = 'Taser X2 ', multiple = false, price = 0 },
                    { name = 'WEAPON_CARBINERIFLE_MK2', label = 'PD AR', multiple = false, price = 0 },
                    { name = 'ammo-rifle2', label = '7.62 Ammo', multiple = true, price = 0 },
                    { name = 'ammo-9', label = '9mm Ammo', multiple = true, price = 0 }, -- Set multiple to true if you want ability to purchase more than one at a time
                    { name = 'taser_cartridge', label = 'Taser Cartidge', multiple = true, price = 0 },
                    { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = 0 },
                    { name = 'WEAPON_FLASHLIGHT', label = 'Flashlight', multiple = false, price = 0 },
                    { name = 'uvlight', label = 'UV Light', multiple = false, price = 0 },
                    { name = 'alcoholmeter', label = 'PBT', multiple = false, price = 0 },
                },
            }
        },

        cloakroom = {
            enabled = true,                        -- WILL NOT SHOW IN QBCORE INSTEAD USE QB-CLOTHING CONFIG! Set to false if you don't want to use (Compatible with esx_skin & wasabi fivem-appearance fork)
            jobLock = 'police',                    -- Allow only one of Config.policeJob listings / Set to false if allow all Config.policeJobs
            coords = vec3(362.76623, -1593.723, 25.451713), -- Coords of cloakroom
            label = '[E] - Change Clothes',        -- String of text ui of cloakroom
            range = 1.5,                           -- Range away from coords you can use.
            uniforms = {                           -- Uniform choices
            [1] = {                            -- Order it will display
            label = 'Patrol',              -- Name of outfit that will display in menu
            minGrade = 0,                  -- Min grade level that can access? Set to 0 or false for everyone to use
            male = {                       -- Male variation
                clothing = {
                    -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                    -- https://docs.fivem.net/natives/?_0xD4F7B05C
                    { component = 11, drawable = 555, texture = 0 }, -- Torso (main shirt)
                    { component = 4,  drawable = 204, texture = 0 }, -- Pants
                    { component = 6,  drawable = 111, texture = 0 }, -- Shoes
                    { component = 3,  drawable = 39, texture = 0 }, -- Arms
                    { component = 9,  drawable = 80, texture = 0 }, -- Body Armour (vest/no vest)
                    { component = 8,  drawable = 250, texture = 1 }, -- Undershirt (taser)
                    { component = 7,  drawable = 213, texture = 0 }, -- Scarfs/chains
                    
                },
                props = {
                    -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                    -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                    { component = 0, drawable = 223, texture = 0 }, -- Hats
                    --{ component = 0, drawable = 223, texture = 0 }, -- Glasses
                }
            },
            female = {
                clothing = {
                    -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                    -- https://docs.fivem.net/natives/?_0xD4F7B05C
                    { component = 11, drawable = 4,  texture = 0 }, -- Torso
                    { component = 8,  drawable = 15, texture = 0 }, -- Shirt
                    { component = 4,  drawable = 25, texture = 0 }, -- Pants
                    { component = 6,  drawable = 16, texture = 4 }, -- Shoes
                    { component = 3,  drawable = 4,  texture = 0 }, -- Arms
                },
                props = {
                    -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                    -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                    --    { component = 0, drawable = 0, texture = 0 }, -- Hats
                }
            }
        },
        [2] = {                            -- Order it will display
            label = 'Patrol 2',              -- Name of outfit that will display in menu
            minGrade = 0,                  -- Min grade level that can access? Set to 0 or false for everyone to use
            male = {                       -- Male variation
                clothing = {
                    -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                    -- https://docs.fivem.net/natives/?_0xD4F7B05C
                    { component = 11, drawable = 555, texture = 0 }, -- Torso (main shirt)
                    { component = 4,  drawable = 204, texture = 0 }, -- Pants
                    { component = 6,  drawable = 111, texture = 0 }, -- Shoes
                    { component = 3,  drawable = 39, texture = 0 }, -- Arms
                    { component = 9,  drawable = 65, texture = 0 }, -- Body Armour (vest/no vest)
                    { component = 8,  drawable = 253, texture = 0 }, -- Undershirt (taser)
                    { component = 7,  drawable = 213, texture = 0 }, -- Scarfs/chains
                    
                },
                props = {
                    -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                    -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                    { component = 0, drawable = 223, texture = 0 }, -- Hats
                    --{ component = 0, drawable = 223, texture = 0 }, -- Glasses
                }
            },
            female = {
                clothing = {
                    -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                    -- https://docs.fivem.net/natives/?_0xD4F7B05C
                    { component = 11, drawable = 4,  texture = 0 }, -- Torso
                    { component = 8,  drawable = 15, texture = 0 }, -- Shirt
                    { component = 4,  drawable = 25, texture = 0 }, -- Pants
                    { component = 6,  drawable = 16, texture = 4 }, -- Shoes
                    { component = 3,  drawable = 4,  texture = 0 }, -- Arms
                },
                props = {
                    -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                    -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                    --    { component = 0, drawable = 0, texture = 0 }, -- Hats
                }
            }
        },
              --[[ [3] = {              -- Order it will display
                    label = 'Chief', -- Name of outfit that will display in menu
                    minGrade = 0,    -- Min grade level that can access? Set to 0 or false for everyone to use
                    male = {         -- Male variation
                        clothing = {
                            -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                            -- https://docs.fivem.net/natives/?_0xD4F7B05C
                            { component = 11, drawable = 15, texture = 0 }, -- Torso
                            { component = 8,  drawable = 58, texture = 0 }, -- Shirt
                            { component = 4,  drawable = 35, texture = 0 }, -- Pants
                            { component = 6,  drawable = 24, texture = 0 }, -- Shoes
                            { component = 3,  drawable = 15, texture = 0 }, -- Arms
                        },
                        props = {
                            -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                            -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                            --    { component = 0, drawable = 0, texture = 0 }, -- Hats
                        }
                    },
                    female = {
                        clothing = {
                            -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                            -- https://docs.fivem.net/natives/?_0xD4F7B05C
                            { component = 11, drawable = 4,  texture = 0 }, -- Torso
                            { component = 8,  drawable = 15, texture = 0 }, -- Shirt
                            { component = 4,  drawable = 25, texture = 0 }, -- Pants
                            { component = 6,  drawable = 16, texture = 4 }, -- Shoes
                            { component = 3,  drawable = 4,  texture = 0 }, -- Arms
                        },
                        props = {
                            -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                            -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                            --    { component = 0, drawable = 0, texture = 0 }, -- Hats
                        }
                    }
                },
                [4] = {              -- Order it will display
                    label = 'Chief', -- Name of outfit that will display in menu
                    minGrade = 0,    -- Min grade level that can access? Set to 0 or false for everyone to use
                    male = {         -- Male variation
                        clothing = {
                            -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                            -- https://docs.fivem.net/natives/?_0xD4F7B05C
                            { component = 11, drawable = 15, texture = 0 }, -- Torso
                            { component = 8,  drawable = 58, texture = 0 }, -- Shirt
                            { component = 4,  drawable = 35, texture = 0 }, -- Pants
                            { component = 6,  drawable = 24, texture = 0 }, -- Shoes
                            { component = 3,  drawable = 15, texture = 0 }, -- Arms
                        },
                        props = {
                            -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                            -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                            --    { component = 0, drawable = 0, texture = 0 }, -- Hats
                        }
                    },
                    female = {
                        clothing = {
                            -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                            -- https://docs.fivem.net/natives/?_0xD4F7B05C
                            { component = 11, drawable = 4,  texture = 0 }, -- Torso
                            { component = 8,  drawable = 15, texture = 0 }, -- Shirt
                            { component = 4,  drawable = 25, texture = 0 }, -- Pants
                            { component = 6,  drawable = 16, texture = 4 }, -- Shoes
                            { component = 3,  drawable = 4,  texture = 0 }, -- Arms
                        },
                        props = {
                            -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                            -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                            --    { component = 0, drawable = 0, texture = 0 }, -- Hats
                        }
                    }
                },]]
            }
        },

        -- Personal Locker. Supports inventories: ox_inventory, qb-inventory, and qs-inventory
        --        Custom inventories can easily be added in wasabi_bridge/inventories/
        personalLocker = {
            enabled = true,                       -- Enable personal locker for this station?
            jobLock = 'police',                    -- Job lock?
            coords = vec3(359.85852, -1593.08, 25.451713), -- Area to prompt personal locker
            range = 1.5,                           -- Range it will prompt from coords above
            label = '[E] - Access Personal Locker',
            target = {
                enabled = true, -- If enabled, the location above will be obsolete
                label = 'Access Personal Locker',
                coords = vec3(359.85852, -1593.08, 25.451713),
                heading = 354.94,
                distance = 2.5,
                width = 2.0,
                length = 1.0,
                minZ = 30.69 - 0.9,
                maxZ = 30.69 + 0.9
            }
        },

        evidenceLocker = {
            enabled = true,                      -- Enable evidence locker for this station?
            jobLock = 'police',                   -- Job lock?
            coords = vec3(381.66064, -1609.515, 30.20276), -- Area to prompt personal locker
            range = 2.0,                          -- Range it will prompt from coords above
            label = '[E] - Access Evidence Locker',
            target = {
                enabled = true, -- If enabled, the location above will be obsolete
                label = 'Access Evidence Locker',
                coords = vec3(381.66064, -1609.515, 30.20276),
                heading = 266.23,
                distance = 2.5,
                width = 2.0,
                length = 1.0,
                minZ = 26.27 - 0.9,
                maxZ = 26.27 + 0.9
            }
        },


        vehicles = {                                   -- Vehicle Garage
            enabled = true,                            -- Enable? False if you have you're own way for medics to obtain vehicles.
            jobLock = 'police',                        -- Job lock? or access to all police jobs by using false
            zone = {
                -- coords = vec3(458.78906, -992.4506, 25.700021), -- Area to prompt vehicle garage
                -- range = 2.5,                           -- Range it will prompt from coords above
                -- label = '[E] - Access Garage',
                -- return_label = '[E] - Return Vehicle'
            },
            --[[spawn = {
                land = {
                    coords = vec3(458.78906, -992.4506, 25.700021), -- Coords of where land vehicle spawn/return
                    heading = 3.68
                },
                air = {
                    coords = vec3(449.3514, -981.3118, 43.691329), -- Coords of where air vehicles spawn/return
                    heading = 90.557632
                }
            },--]]
            options = {

                [0] = { -- [Cadet]                      -- Job grade as table name
                    ['nkstanier'] = {                   -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Stanier',
                        category = 'land',              -- Options are 'land' and 'air'
                    },
                    ['nkbuffalos'] = {                  -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Police Buffalo',
                        category = 'land',              -- Options are 'land' and 'air'
                    },
                },

                [1] = { -- [Deputy I]
                    ['nkstanier'] = {
                        label = 'Police Stanier',
                        category = 'land',
                    },
                    ['nkbuffalos'] = {
                        label = 'Police Buffalo',
                        category = 'land',
                    },
                    ['nkscout2020'] = {
                        label = 'Police Scout',
                        category = 'land',
                    },
                    ['nktorrence'] = {
                        label = 'Police Torrence',
                        category = 'land',
                    },
                    ['nkaleutian'] = {
                        label = 'Police Aleutian',
                        category = 'land',
                    },
                },

                [2] = { -- [Deputy II]
                    ['nkstanier'] = {
                        label = 'Police Stanier',
                        category = 'land',
                    },
                    ['nkbuffalos'] = {
                        label = 'Police Buffalo',
                        category = 'land',
                    },
                    ['nkscout2020'] = {
                        label = 'Police Scout',
                        category = 'land',
                    },
                    ['nktorrence'] = {
                        label = 'Police Torrence',
                        category = 'land',
                    },
                    ['nkaleutian'] = {
                        label = 'Police Aleutian',
                        category = 'land',
                    },
                    ['nkstx'] = {
                        label = 'Police STX',
                        category = 'land',
                    },
                    ['nkbison'] = {
                        label = 'Police Bison',
                        category = 'land',
                    },
                    ['nkgranger2'] = {
                        label = 'Police Granger2',
                        category = 'land',
                    },
                },

                [3] = { -- [Corporal]
                    ['nkstanier'] = {
                        label = 'Police Stanier',
                        category = 'land',
                    },
                    ['nkbuffalos'] = {
                        label = 'Police Buffalo',
                        category = 'land',
                    },
                    ['nkscout2020'] = {
                        label = 'Police Scout',
                        category = 'land',
                    },
                    ['nktorrence'] = {
                        label = 'Police Torrence',
                        category = 'land',
                    },
                    ['nkaleutian'] = {
                        label = 'Police Aleutian',
                        category = 'land',
                    },
                    ['nkstx'] = {
                        label = 'Police STX',
                        category = 'land',
                    },
                    ['nkbison'] = {
                        label = 'Police Bison',
                        category = 'land',
                    },
                    ['nkgranger2'] = {
                        label = 'Police Granger2',
                        category = 'land',
                    },
                    ['nkvigero2'] = {
                        label = 'Police Vigero2',
                        category = 'land',
                    },
                },

                [4] = { -- [Major]
                    ['nkstanier'] = {
                        label = 'Police Stanier',
                        category = 'land',
                    },
                    ['nkbuffalos'] = {
                        label = 'Police Buffalo',
                        category = 'land',
                    },
                    ['nkscout2020'] = {
                        label = 'Police Scout',
                        category = 'land',
                    },
                    ['nktorrence'] = {
                        label = 'Police Torrence',
                        category = 'land',
                    },
                    ['nkaleutian'] = {
                        label = 'Police Aleutian',
                        category = 'land',
                    },
                    ['nkstx'] = {
                        label = 'Police STX',
                        category = 'land',
                    },
                    ['nkbison'] = {
                        label = 'Police Bison',
                        category = 'land',
                    },
                    ['nkgranger2'] = {
                        label = 'Police Granger2',
                        category = 'land',
                    },
                    ['nkvigero2'] = {
                        label = 'Police Vigero2',
                        category = 'land',
                    },
                    ['nkcavalcade3'] = {
                        label = 'Police Cavalcade3',
                        category = 'land',
                    },
                    ['polmav'] = {
                        label = 'Maverick',
                        category = 'air',
                    },
                },

                [5] = { -- [Lieutenant Colonel]
                    ['nkstanier'] = {
                        label = 'Police Stanier',
                        category = 'land',
                    },
                    ['nkbuffalos'] = {
                        label = 'Police Buffalo',
                        category = 'land',
                    },
                    ['nkscout2020'] = {
                        label = 'Police Scout',
                        category = 'land',
                    },
                    ['nktorrence'] = {
                        label = 'Police Torrence',
                        category = 'land',
                    },
                    ['nkaleutian'] = {
                        label = 'Police Aleutian',
                        category = 'land',
                    },
                    ['nkstx'] = {
                        label = 'Police STX',
                        category = 'land',
                    },
                    ['nkbison'] = {
                        label = 'Police Bison',
                        category = 'land',
                    },
                    ['nkgranger2'] = {
                        label = 'Police Granger2',
                        category = 'land',
                    },
                    ['nkvigero2'] = {
                        label = 'Police Vigero2',
                        category = 'land',
                    },
                    ['nkcavalcade3'] = {
                        label = 'Police Cavalcade3',
                        category = 'land',
                    },
                    ['nkcomet6'] = {
                        label = 'Police Comet6',
                        category = 'land',
                    },
                    ['polmav'] = {
                        label = 'Maverick',
                        category = 'air',
                    },
                },

                [6] = { -- [Colonel]
                    ['nkstanier'] = {
                        label = 'Police Stanier',
                        category = 'land',
                    },
                    ['nkbuffalos'] = {
                        label = 'Police Buffalo',
                        category = 'land',
                    },
                    ['nkscout2020'] = {
                        label = 'Police Scout',
                        category = 'land',
                    },
                    ['nktorrence'] = {
                        label = 'Police Torrence',
                        category = 'land',
                    },
                    ['nkaleutian'] = {
                        label = 'Police Aleutian',
                        category = 'land',
                    },
                    ['nkstx'] = {
                        label = 'Police STX',
                        category = 'land',
                    },
                    ['nkbison'] = {
                        label = 'Police Bison',
                        category = 'land',
                    },
                    ['nkgranger2'] = {
                        label = 'Police Granger2',
                        category = 'land',
                    },
                    ['nkvigero2'] = {
                        label = 'Police Vigero2',
                        category = 'land',
                    },
                    ['nkcavalcade3'] = {
                        label = 'Police Cavalcade3',
                        category = 'land',
                    },
                    ['nkcomet6'] = {
                        label = 'Police Comet6',
                        category = 'land',
                    },
                    ['polmav'] = {
                        label = 'Maverick',
                        category = 'air',
                    },
                },

                [7] = { -- [Under Sheriff]
                    ['nkstanier'] = {
                        label = 'Police Stanier',
                        category = 'land',
                    },
                    ['nkbuffalos'] = {
                        label = 'Police Buffalo',
                        category = 'land',
                    },
                    ['nkscout2020'] = {
                        label = 'Police Scout',
                        category = 'land',
                    },
                    ['nktorrence'] = {
                        label = 'Police Torrence',
                        category = 'land',
                    },
                    ['nkaleutian'] = {
                        label = 'Police Aleutian',
                        category = 'land',
                    },
                    ['nkstx'] = {
                        label = 'Police STX',
                        category = 'land',
                    },
                    ['nkbison'] = {
                        label = 'Police Bison',
                        category = 'land',
                    },
                    ['nkgranger2'] = {
                        label = 'Police Granger2',
                        category = 'land',
                    },
                    ['nkvigero2'] = {
                        label = 'Police Vigero2',
                        category = 'land',
                    },
                    ['nkcavalcade3'] = {
                        label = 'Police Cavalcade3',
                        category = 'land',
                    },
                    ['nkcomet6'] = {
                        label = 'Police Comet6',
                        category = 'land',
                    },
                    ['polmav'] = {
                        label = 'Maverick',
                        category = 'air',
                    },
                },

                [8] = { -- [Sheriff]
                    ['nkstanier'] = {
                        label = 'Police Stanier',
                        category = 'land',
                    },
                    ['nkbuffalos'] = {
                        label = 'Police Buffalo',
                        category = 'land',
                    },
                    ['nkscout2020'] = {
                        label = 'Police Scout',
                        category = 'land',
                    },
                    ['nktorrence'] = {
                        label = 'Police Torrence',
                        category = 'land',
                    },
                    ['nkaleutian'] = {
                        label = 'Police Aleutian',
                        category = 'land',
                    },
                    ['nkstx'] = {
                        label = 'Police STX',
                        category = 'land',
                    },
                    ['nkbison'] = {
                        label = 'Police Bison',
                        category = 'land',
                    },
                    ['nkgranger2'] = {
                        label = 'Police Granger2',
                        category = 'land',
                    },
                    ['nkvigero2'] = {
                        label = 'Police Vigero2',
                        category = 'land',
                    },
                    ['nkcavalcade3'] = {
                        label = 'Police Cavalcade3',
                        category = 'land',
                    },
                    ['nkcomet6'] = {
                        label = 'Police Comet6',
                        category = 'land',
                    },
                    ['polmav'] = {
                        label = 'Maverick',
                        category = 'air',
                    },
                },
            }
        }
    },
    SandySheriffOffice = {
        blip = {
            enabled = true,
            coords = vec3(1839.0286, 3669.7297, 33.929676),
            sprite = 58,
            color = 29,
            scale = 1.0,
            string = 'Sandy Sheriff Office'
        },

        clockInAndOut = {
            enabled = true,                        -- Enable clocking in and out at a set location? (If using ESX you must have a off duty job for each e.x. offpolice for police offsheriff for sheriff AND have grades for each pd grade - QBCORE REQUIRES NOTHING)
            jobLock = 'police',                    -- This must be set to which job will be utilizing (ESX MUST HAVE OFF DUTY JOB / GRADES FOR THIS - ex. offpolice or offsheriff)
            coords = vec3(1833.8233, 3678.4101, 34.189193), -- Location of where to go on and off duty(If not using target)
            label = '[E] - Go On/Off Duty',        -- Text to display(If not using target)
            distance = 3.0,                        -- Distance to display text UI(If not using target)
            target = {
                enabled = true,                   -- If enabled, the location and distance above will be obsolete
                label = 'Go On/Off Duty',
                coords = vec3(1833.8233, 3678.4101, 34.189193),
                heading = 91.06,
                distance = 2.5,
                width = 2.0,
                length = 1.0,
                minZ = 30.69 - 0.9,
                maxZ = 30.69 + 0.9
            }
        },

        bossMenu = {
            enabled = true,                        -- Enable boss menu?
            jobLock = 'police',                    -- Lock to specific police job? Set to false if not desired
            coords = vec3(1825.7226, 3672.0666, 38.859474), -- Location of boss menu (If not using target)
            label = '[E] - Access Boss Menu',      -- Text UI label string (If not using target)
            distance = 3.0,                        -- Distance to allow access/prompt with text UI (If not using target)
            target = {
                enabled = true,                   -- If enabled, the location and distance above will be obsolete
                label = 'Access Boss Menu',
                coords = vec3(1825.7226, 3672.0666, 38.859474),
                heading = 228.36648,
                distance = 2.0,
                width = 2.0,
                length = 1.0,
                minZ = 30.73 - 0.9,
                maxZ = 30.73 + 0.9
            }
        },

        armoury = {
            enabled = true,                                                                              -- Set to false if you don't want to use
            coords = vec3(1837.4005, 3686.9768, 33.118305),                                                 -- Coords of armoury
            heading = 205.84976,                                                                           -- Heading of armoury NPC
            ped = 's_f_y_cop_01',                                                                        -- Ped model or false for no ped
            label = '[E] - Access Armoury',                                                              -- String of text ui
            jobLock = 'police',                                                                          -- Allow only one of Config.policeJob listings / Set to false if allow all Config.policeJobs
            weapons = {
                [0] = {                                                                                  -- Grade number will be the name of each table(this would be grade 0)
                    { name = 'WEAPON_PISTOL_MK2',     label = 'PD Pistol',      multiple = false, price = 0 }, -- Set price to false if undesired
                    { name = 'WEAPON_NIGHTSTICK', label = 'Night Stick', multiple = false, price = 0 },
                    { name = 'WEAPON_STUNGUN', label = 'Taser X2 ', multiple = false, price = 0 },
                    { name = 'ammo-9' , label = '9mm Ammo', multiple = true, price = 0 }, -- Set multiple to true if you want ability to purchase more than one at a time
                    { name = 'taser_cartridge', label = 'Taser Cartidge', multiple = true, price = 0 },
                    { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = 0 },
                    { name = 'WEAPON_FLASHLIGHT', label = 'Flashlight', multiple = false, price = 0 },
                    { name = 'uvlight', label = 'UV Light', multiple = false, price = 0 },
                    { name = 'alcoholmeter', label = 'PBT', multiple = false, price = 0 },
                },
                [1] = { -- This would be grade 1
                    { name = 'WEAPON_PISTOL_MK2', label = 'PD Pistol', multiple = false, price = 0 },
                    { name = 'WEAPON_NIGHTSTICK',   label = 'Night Stick',   multiple = false, price = 0 },
                    { name = 'WEAPON_STUNGUN', label = 'Taser X2 ', multiple = false, price = 0 },
                    { name = 'ammo-9', label = '9mm Ammo', multiple = true, price = 0 },
                    { name = 'taser_cartridge', label = 'Taser Cartidge', multiple = true, price = 0 },
                    { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = 0 },
                    { name = 'WEAPON_FLASHLIGHT', label = 'Flashlight', multiple = false, price = 0 },
                    { name = 'uvlight', label = 'UV Light', multiple = false, price = 0 },
                    { name = 'alcoholmeter', label = 'PBT', multiple = false, price = 0 },
                },
                [2] = { -- This would be grade 2
                    { name = 'WEAPON_PISTOL_MK2', label = 'PD Pistol', multiple = false, price = 0 },
                    { name = 'WEAPON_NIGHTSTICK',   label = 'Night Stick',   multiple = false, price = 0 },
                    { name = 'WEAPON_STUNGUN', label = 'Taser X2 ', multiple = false, price = 0 },
                    { name = 'WEAPON_CARBINERIFLE_MK2', label = 'PD AR', multiple = false, price = 0 },
                    { name = 'ammo-9', label = '9mm Ammo', multiple = true, price = 0 }, -- Set multiple to true if you want ability to purchase more than one at a time
                    { name = 'ammo-rifle2', label = '7.62 Ammo', multiple = true, price = 0 }, -- Example
                    { name = 'taser_cartridge', label = 'Taser Cartidge', multiple = true, price = 0 },
                    { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = 0 }, -- Example
                    { name = 'WEAPON_FLASHLIGHT', label = 'Flashlight', multiple = false, price = 0 },
                    { name = 'uvlight', label = 'UV Light', multiple = false, price = 0 },
                    { name = 'alcoholmeter', label = 'PBT', multiple = false, price = 0 },
                },
                [3] = { -- This would be grade 3
                    { name = 'WEAPON_PISTOL_MK2', label = 'PD Pistol', multiple = false, price = 0 },
                    { name = 'WEAPON_NIGHTSTICK',   label = 'Night Stick',   multiple = false, price = 0 },
                    { name = 'WEAPON_STUNGUN', label = 'Taser X2 ', multiple = false, price = 0 },
                    { name = 'WEAPON_CARBINERIFLE_MK2', label = 'PD AR', multiple = false, price = 0 },
                    { name = 'ammo-rifle2', label = '7.62 Ammo', multiple = true, price = 0 },
                    { name = 'ammo-9', label = '9mm Ammo', multiple = true, price = 0 }, -- Set multiple to true if you want ability to purchase more than one at a time
                    { name = 'taser_cartridge', label = 'Taser Cartidge', multiple = true, price = 0 },
                    { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = 0 },
                    { name = 'WEAPON_FLASHLIGHT', label = 'Flashlight', multiple = false, price = 0 },
                    { name = 'uvlight', label = 'UV Light', multiple = false, price = 0 },
                    { name = 'alcoholmeter', label = 'PBT', multiple = false, price = 0 },
                },
            }
        },

        cloakroom = {
            enabled = true,                        -- WILL NOT SHOW IN QBCORE INSTEAD USE QB-CLOTHING CONFIG! Set to false if you don't want to use (Compatible with esx_skin & wasabi fivem-appearance fork)
            jobLock = 'police',                    -- Allow only one of Config.policeJob listings / Set to false if allow all Config.policeJobs
            coords = vec3(1839.1949, 3679.9458, 34.1893), -- Coords of cloakroom
            label = '[E] - Change Clothes',        -- String of text ui of cloakroom
            range = 1.5,                           -- Range away from coords you can use.
            uniforms = {                           -- Uniform choices
            [1] = {                            -- Order it will display
            label = 'Patrol',              -- Name of outfit that will display in menu
            minGrade = 0,                  -- Min grade level that can access? Set to 0 or false for everyone to use
            male = {                       -- Male variation
                clothing = {
                    -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                    -- https://docs.fivem.net/natives/?_0xD4F7B05C
                    { component = 11, drawable = 555, texture = 0 }, -- Torso (main shirt)
                    { component = 4,  drawable = 204, texture = 0 }, -- Pants
                    { component = 6,  drawable = 111, texture = 0 }, -- Shoes
                    { component = 3,  drawable = 39, texture = 0 }, -- Arms
                    { component = 9,  drawable = 80, texture = 0 }, -- Body Armour (vest/no vest)
                    { component = 8,  drawable = 250, texture = 1 }, -- Undershirt (taser)
                    { component = 7,  drawable = 213, texture = 0 }, -- Scarfs/chains
                    
                },
                props = {
                    -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                    -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                    { component = 0, drawable = 223, texture = 0 }, -- Hats
                    --{ component = 0, drawable = 223, texture = 0 }, -- Glasses
                }
            },
            female = {
                clothing = {
                    -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                    -- https://docs.fivem.net/natives/?_0xD4F7B05C
                    { component = 11, drawable = 4,  texture = 0 }, -- Torso
                    { component = 8,  drawable = 15, texture = 0 }, -- Shirt
                    { component = 4,  drawable = 25, texture = 0 }, -- Pants
                    { component = 6,  drawable = 16, texture = 4 }, -- Shoes
                    { component = 3,  drawable = 4,  texture = 0 }, -- Arms
                },
                props = {
                    -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                    -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                    --    { component = 0, drawable = 0, texture = 0 }, -- Hats
                }
            }
        },
        [2] = {                            -- Order it will display
            label = 'Patrol 2',              -- Name of outfit that will display in menu
            minGrade = 0,                  -- Min grade level that can access? Set to 0 or false for everyone to use
            male = {                       -- Male variation
                clothing = {
                    -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                    -- https://docs.fivem.net/natives/?_0xD4F7B05C
                    { component = 11, drawable = 555, texture = 0 }, -- Torso (main shirt)
                    { component = 4,  drawable = 204, texture = 0 }, -- Pants
                    { component = 6,  drawable = 111, texture = 0 }, -- Shoes
                    { component = 3,  drawable = 39, texture = 0 }, -- Arms
                    { component = 9,  drawable = 65, texture = 0 }, -- Body Armour (vest/no vest)
                    { component = 8,  drawable = 253, texture = 0 }, -- Undershirt (taser)
                    { component = 7,  drawable = 213, texture = 0 }, -- Scarfs/chains
                    
                },
                props = {
                    -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                    -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                    { component = 0, drawable = 223, texture = 0 }, -- Hats
                    --{ component = 0, drawable = 223, texture = 0 }, -- Glasses
                }
            },
            female = {
                clothing = {
                    -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                    -- https://docs.fivem.net/natives/?_0xD4F7B05C
                    { component = 11, drawable = 4,  texture = 0 }, -- Torso
                    { component = 8,  drawable = 15, texture = 0 }, -- Shirt
                    { component = 4,  drawable = 25, texture = 0 }, -- Pants
                    { component = 6,  drawable = 16, texture = 4 }, -- Shoes
                    { component = 3,  drawable = 4,  texture = 0 }, -- Arms
                },
                props = {
                    -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                    -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                    --    { component = 0, drawable = 0, texture = 0 }, -- Hats
                }
            }
        },
                --[[[3] = {              -- Order it will display
                    label = 'Chief', -- Name of outfit that will display in menu
                    minGrade = 0,    -- Min grade level that can access? Set to 0 or false for everyone to use
                    male = {         -- Male variation
                        clothing = {
                            -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                            -- https://docs.fivem.net/natives/?_0xD4F7B05C
                            { component = 11, drawable = 15, texture = 0 }, -- Torso
                            { component = 8,  drawable = 58, texture = 0 }, -- Shirt
                            { component = 4,  drawable = 35, texture = 0 }, -- Pants
                            { component = 6,  drawable = 24, texture = 0 }, -- Shoes
                            { component = 3,  drawable = 15, texture = 0 }, -- Arms
                        },
                        props = {
                            -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                            -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                            --    { component = 0, drawable = 0, texture = 0 }, -- Hats
                        }
                    },
                    female = {
                        clothing = {
                            -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                            -- https://docs.fivem.net/natives/?_0xD4F7B05C
                            { component = 11, drawable = 4,  texture = 0 }, -- Torso
                            { component = 8,  drawable = 15, texture = 0 }, -- Shirt
                            { component = 4,  drawable = 25, texture = 0 }, -- Pants
                            { component = 6,  drawable = 16, texture = 4 }, -- Shoes
                            { component = 3,  drawable = 4,  texture = 0 }, -- Arms
                        },
                        props = {
                            -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                            -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                            --    { component = 0, drawable = 0, texture = 0 }, -- Hats
                        }
                    }
                },
                [4] = {              -- Order it will display
                    label = 'Chief', -- Name of outfit that will display in menu
                    minGrade = 0,    -- Min grade level that can access? Set to 0 or false for everyone to use
                    male = {         -- Male variation
                        clothing = {
                            -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                            -- https://docs.fivem.net/natives/?_0xD4F7B05C
                            { component = 11, drawable = 15, texture = 0 }, -- Torso
                            { component = 8,  drawable = 58, texture = 0 }, -- Shirt
                            { component = 4,  drawable = 35, texture = 0 }, -- Pants
                            { component = 6,  drawable = 24, texture = 0 }, -- Shoes
                            { component = 3,  drawable = 15, texture = 0 }, -- Arms
                        },
                        props = {
                            -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                            -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                            --    { component = 0, drawable = 0, texture = 0 }, -- Hats
                        }
                    },
                    female = {
                        clothing = {
                            -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                            -- https://docs.fivem.net/natives/?_0xD4F7B05C
                            { component = 11, drawable = 4,  texture = 0 }, -- Torso
                            { component = 8,  drawable = 15, texture = 0 }, -- Shirt
                            { component = 4,  drawable = 25, texture = 0 }, -- Pants
                            { component = 6,  drawable = 16, texture = 4 }, -- Shoes
                            { component = 3,  drawable = 4,  texture = 0 }, -- Arms
                        },
                        props = {
                            -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                            -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                            --    { component = 0, drawable = 0, texture = 0 }, -- Hats
                        }
                    }
                },]]
            }
        },

        -- Personal Locker. Supports inventories: ox_inventory, qb-inventory, and qs-inventory
        --        Custom inventories can easily be added in wasabi_bridge/inventories/
        personalLocker = {
            enabled = true,                       -- Enable personal locker for this station?
            jobLock = 'police',                    -- Job lock?
            coords = vec3(1842.8698, 3680.142, 34.1893), -- Area to prompt personal locker
            range = 1.5,                           -- Range it will prompt from coords above
            label = '[E] - Access Personal Locker',
            target = {
                enabled = true, -- If enabled, the location above will be obsolete
                label = 'Access Personal Locker',
                coords = vec3(1842.8698, 3680.142, 34.1893),
                heading = 354.94,
                distance = 2.5,
                width = 2.0,
                length = 1.0,
                minZ = 30.69 - 0.9,
                maxZ = 30.69 + 0.9
            }
        },

        evidenceLocker = {
            enabled = true,                      -- Enable evidence locker for this station?
            jobLock = 'police',                   -- Job lock?
            coords = vec3(1830.6068, 3679.1896, 38.859481), -- Area to prompt personal locker
            range = 2.0,                          -- Range it will prompt from coords above
            label = '[E] - Access Evidence Locker',
            target = {
                enabled = true, -- If enabled, the location above will be obsolete
                label = 'Access Evidence Locker',
                coords = vec3(1830.6068, 3679.1896, 38.859481),
                heading = 266.23,
                distance = 2.5,
                width = 2.0,
                length = 1.0,
                minZ = 26.27 - 0.9,
                maxZ = 26.27 + 0.9
            }
        },


        vehicles = {                                   -- Vehicle Garage
            enabled = true,                            -- Enable? False if you have you're own way for medics to obtain vehicles.
            jobLock = 'police',                        -- Job lock? or access to all police jobs by using false
            zone = {
                 coords = vec3(1842.1634, 3692.8085, 33.974658), -- Area to prompt vehicle garage
                 range = 5.0,                           -- Range it will prompt from coords above
                 label = '[E] - Access Air Garage',
                 return_label = '[E] - Return Helio'
            },
            spawn = {
                --[[land = {
                    coords = vec3(458.78906, -992.4506, 25.700021), -- Coords of where land vehicle spawn/return
                    heading = 3.68
                },--]]
                air = {
                    coords = vec3(1854.0034, 3705.2583, 33.974651), -- Coords of where air vehicles spawn/return
                    heading = 27.695346
                }
            },
            options = {

                [0] = { -- [Cadet]                      -- Job grade as table name

                },

                [1] = { -- [Deputy I]

                },

                [2] = { -- [Deputy II]

                },

                [3] = { -- [Corporal]

                },

                [4] = { -- [Major]
                    ['polmav'] = {
                        label = 'Maverick',
                        category = 'air',
                    },
                },

                [5] = { -- [Lieutenant Colonel]
                    ['polmav'] = {
                        label = 'Maverick',
                        category = 'air',
                    },
                },

                [6] = { -- [Colonel]
                    ['polmav'] = {
                        label = 'Maverick',
                        category = 'air',
                    },
                },

                [7] = { -- [Under Sheriff]
                    ['polmav'] = {
                        label = 'Maverick',
                        category = 'air',
                    },
                },

                [8] = { -- [Sheriff]
                    ['polmav'] = {
                        label = 'Maverick',
                        category = 'air',
                    },
                },
            }
        }
    },
    PaletoSheriffOffice = {
        blip = {
            enabled = true,
            coords = vec3(-433.8739, 6017.6484, 31.490173),
            sprite = 58,
            color = 29,
            scale = 1.0,
            string = 'Paleto Sheriff Office'
        },

        clockInAndOut = {
            enabled = true,                        -- Enable clocking in and out at a set location? (If using ESX you must have a off duty job for each e.x. offpolice for police offsheriff for sheriff AND have grades for each pd grade - QBCORE REQUIRES NOTHING)
            jobLock = 'police',                    -- This must be set to which job will be utilizing (ESX MUST HAVE OFF DUTY JOB / GRADES FOR THIS - ex. offpolice or offsheriff)
            coords = vec3(-447.405, 6013.0434, 32.288673), -- Location of where to go on and off duty(If not using target)
            label = '[E] - Go On/Off Duty',        -- Text to display(If not using target)
            distance = 3.0,                        -- Distance to display text UI(If not using target)
            target = {
                enabled = true,                   -- If enabled, the location and distance above will be obsolete
                label = 'Go On/Off Duty',
                coords = vec3(-447.405, 6013.0434, 32.288673),
                heading = 91.06,
                distance = 2.5,
                width = 2.0,
                length = 1.0,
                minZ = 30.69 - 0.9,
                maxZ = 30.69 + 0.9
            }
        },

        bossMenu = {
            enabled = true,                        -- Enable boss menu?
            jobLock = 'police',                    -- Lock to specific police job? Set to false if not desired
            coords = vec3(-432.8309, 6004.9077, 36.99567), -- Location of boss menu (If not using target)
            label = '[E] - Access Boss Menu',      -- Text UI label string (If not using target)
            distance = 3.0,                        -- Distance to allow access/prompt with text UI (If not using target)
            target = {
                enabled = true,                   -- If enabled, the location and distance above will be obsolete
                label = 'Access Boss Menu',
                coords = vec3(-432.8309, 6004.9077, 36.99567),
                heading = 228.36648,
                distance = 2.0,
                width = 2.0,
                length = 1.0,
                minZ = 30.73 - 0.9,
                maxZ = 30.73 + 0.9
            }
        },

        armoury = {
            enabled = true,                                                                              -- Set to false if you don't want to use
            coords = vec3(-444.2185, 6013.4453, 35.937351),                                                 -- Coords of armoury
            heading = 224.32028,                                                                           -- Heading of armoury NPC
            ped = 's_f_y_cop_01',                                                                        -- Ped model or false for no ped
            label = '[E] - Access Armoury',                                                              -- String of text ui
            jobLock = 'police',                                                                          -- Allow only one of Config.policeJob listings / Set to false if allow all Config.policeJobs
            weapons = {
                [0] = {                                                                                  -- Grade number will be the name of each table(this would be grade 0)
                    { name = 'WEAPON_PISTOL_MK2',     label = 'PD Pistol',      multiple = false, price = 0 }, -- Set price to false if undesired
                    { name = 'WEAPON_NIGHTSTICK', label = 'Night Stick', multiple = false, price = 0 },
                    { name = 'WEAPON_STUNGUN', label = 'Taser X2 ', multiple = false, price = 0 },
                    { name = 'ammo-9' , label = '9mm Ammo', multiple = true, price = 0 }, -- Set multiple to true if you want ability to purchase more than one at a time
                    { name = 'taser_cartridge', label = 'Taser Cartidge', multiple = true, price = 0 },
                    { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = 0 },
                    { name = 'WEAPON_FLASHLIGHT', label = 'Flashlight', multiple = false, price = 0 },
                    { name = 'uvlight', label = 'UV Light', multiple = false, price = 0 },
                    { name = 'alcoholmeter', label = 'PBT', multiple = false, price = 0 },
                },
                [1] = { -- This would be grade 1
                    { name = 'WEAPON_PISTOL_MK2', label = 'PD Pistol', multiple = false, price = 0 },
                    { name = 'WEAPON_NIGHTSTICK',   label = 'Night Stick',   multiple = false, price = 0 },
                    { name = 'WEAPON_STUNGUN', label = 'Taser X2 ', multiple = false, price = 0 },
                    { name = 'ammo-9', label = '9mm Ammo', multiple = true, price = 0 },
                    { name = 'taser_cartridge', label = 'Taser Cartidge', multiple = true, price = 0 },
                    { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = 0 },
                    { name = 'WEAPON_FLASHLIGHT', label = 'Flashlight', multiple = false, price = 0 },
                    { name = 'uvlight', label = 'UV Light', multiple = false, price = 0 },
                    { name = 'alcoholmeter', label = 'PBT', multiple = false, price = 0 },
                },
                [2] = { -- This would be grade 2
                    { name = 'WEAPON_PISTOL_MK2', label = 'PD Pistol', multiple = false, price = 0 },
                    { name = 'WEAPON_NIGHTSTICK',   label = 'Night Stick',   multiple = false, price = 0 },
                    { name = 'WEAPON_STUNGUN', label = 'Taser X2 ', multiple = false, price = 0 },
                    { name = 'WEAPON_CARBINERIFLE_MK2', label = 'PD AR', multiple = false, price = 0 },
                    { name = 'ammo-9', label = '9mm Ammo', multiple = true, price = 0 }, -- Set multiple to true if you want ability to purchase more than one at a time
                    { name = 'ammo-rifle2', label = '7.62 Ammo', multiple = true, price = 0 }, -- Example
                    { name = 'taser_cartridge', label = 'Taser Cartidge', multiple = true, price = 0 },
                    { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = 0 }, -- Example
                    { name = 'WEAPON_FLASHLIGHT', label = 'Flashlight', multiple = false, price = 0 },
                    { name = 'uvlight', label = 'UV Light', multiple = false, price = 0 },
                    { name = 'alcoholmeter', label = 'PBT', multiple = false, price = 0 },
                },
                [3] = { -- This would be grade 3
                    { name = 'WEAPON_PISTOL_MK2', label = 'PD Pistol', multiple = false, price = 0 },
                    { name = 'WEAPON_NIGHTSTICK',   label = 'Night Stick',   multiple = false, price = 0 },
                    { name = 'WEAPON_STUNGUN', label = 'Taser X2 ', multiple = false, price = 0 },
                    { name = 'WEAPON_CARBINERIFLE_MK2', label = 'PD AR', multiple = false, price = 0 },
                    { name = 'ammo-rifle2', label = '7.62 Ammo', multiple = true, price = 0 },
                    { name = 'ammo-9', label = '9mm Ammo', multiple = true, price = 0 }, -- Set multiple to true if you want ability to purchase more than one at a time
                    { name = 'taser_cartridge', label = 'Taser Cartidge', multiple = true, price = 0 },
                    { name = 'armour', label = 'Bulletproof Vest', multiple = false, price = 0 },
                    { name = 'WEAPON_FLASHLIGHT', label = 'Flashlight', multiple = false, price = 0 },
                    { name = 'uvlight', label = 'UV Light', multiple = false, price = 0 },
                    { name = 'alcoholmeter', label = 'PBT', multiple = false, price = 0 },
                },
            }
        },

        cloakroom = {
            enabled = true,                        -- WILL NOT SHOW IN QBCORE INSTEAD USE QB-CLOTHING CONFIG! Set to false if you don't want to use (Compatible with esx_skin & wasabi fivem-appearance fork)
            jobLock = 'police',                    -- Allow only one of Config.policeJob listings / Set to false if allow all Config.policeJobs
            coords = vec3(-439.2796, 6008.4633, 36.995685), -- Coords of cloakroom
            label = '[E] - Change Clothes',        -- String of text ui of cloakroom
            range = 1.5,                           -- Range away from coords you can use.
            uniforms = {                           -- Uniform choices
            [1] = {                            -- Order it will display
            label = 'Patrol',              -- Name of outfit that will display in menu
            minGrade = 0,                  -- Min grade level that can access? Set to 0 or false for everyone to use
            male = {                       -- Male variation
                clothing = {
                    -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                    -- https://docs.fivem.net/natives/?_0xD4F7B05C
                    { component = 11, drawable = 555, texture = 0 }, -- Torso (main shirt)
                    { component = 4,  drawable = 204, texture = 0 }, -- Pants
                    { component = 6,  drawable = 111, texture = 0 }, -- Shoes
                    { component = 3,  drawable = 39, texture = 0 }, -- Arms
                    { component = 9,  drawable = 80, texture = 0 }, -- Body Armour (vest/no vest)
                    { component = 8,  drawable = 250, texture = 1 }, -- Undershirt (taser)
                    { component = 7,  drawable = 213, texture = 0 }, -- Scarfs/chains
                    
                },
                props = {
                    -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                    -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                    { component = 0, drawable = 223, texture = 0 }, -- Hats
                    --{ component = 0, drawable = 223, texture = 0 }, -- Glasses
                }
            },
            female = {
                clothing = {
                    -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                    -- https://docs.fivem.net/natives/?_0xD4F7B05C
                    { component = 11, drawable = 4,  texture = 0 }, -- Torso
                    { component = 8,  drawable = 15, texture = 0 }, -- Shirt
                    { component = 4,  drawable = 25, texture = 0 }, -- Pants
                    { component = 6,  drawable = 16, texture = 4 }, -- Shoes
                    { component = 3,  drawable = 4,  texture = 0 }, -- Arms
                },
                props = {
                    -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                    -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                    --    { component = 0, drawable = 0, texture = 0 }, -- Hats
                }
            }
        },
        [2] = {                            -- Order it will display
            label = 'Patrol 2',              -- Name of outfit that will display in menu
            minGrade = 0,                  -- Min grade level that can access? Set to 0 or false for everyone to use
            male = {                       -- Male variation
                clothing = {
                    -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                    -- https://docs.fivem.net/natives/?_0xD4F7B05C
                    { component = 11, drawable = 555, texture = 0 }, -- Torso (main shirt)
                    { component = 4,  drawable = 204, texture = 0 }, -- Pants
                    { component = 6,  drawable = 111, texture = 0 }, -- Shoes
                    { component = 3,  drawable = 39, texture = 0 }, -- Arms
                    { component = 9,  drawable = 65, texture = 0 }, -- Body Armour (vest/no vest)
                    { component = 8,  drawable = 253, texture = 0 }, -- Undershirt (taser)
                    { component = 7,  drawable = 213, texture = 0 }, -- Scarfs/chains
                    
                },
                props = {
                    -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                    -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                    { component = 0, drawable = 223, texture = 0 }, -- Hats
                    --{ component = 0, drawable = 223, texture = 0 }, -- Glasses
                }
            },
            female = {
                clothing = {
                    -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                    -- https://docs.fivem.net/natives/?_0xD4F7B05C
                    { component = 11, drawable = 4,  texture = 0 }, -- Torso
                    { component = 8,  drawable = 15, texture = 0 }, -- Shirt
                    { component = 4,  drawable = 25, texture = 0 }, -- Pants
                    { component = 6,  drawable = 16, texture = 4 }, -- Shoes
                    { component = 3,  drawable = 4,  texture = 0 }, -- Arms
                },
                props = {
                    -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                    -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                    --    { component = 0, drawable = 0, texture = 0 }, -- Hats
                }
            }
        },
                --[[[3] = {              -- Order it will display
                    label = 'Chief', -- Name of outfit that will display in menu
                    minGrade = 0,    -- Min grade level that can access? Set to 0 or false for everyone to use
                    male = {         -- Male variation
                        clothing = {
                            -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                            -- https://docs.fivem.net/natives/?_0xD4F7B05C
                            { component = 11, drawable = 15, texture = 0 }, -- Torso
                            { component = 8,  drawable = 58, texture = 0 }, -- Shirt
                            { component = 4,  drawable = 35, texture = 0 }, -- Pants
                            { component = 6,  drawable = 24, texture = 0 }, -- Shoes
                            { component = 3,  drawable = 15, texture = 0 }, -- Arms
                        },
                        props = {
                            -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                            -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                            --    { component = 0, drawable = 0, texture = 0 }, -- Hats
                        }
                    },
                    female = {
                        clothing = {
                            -- Components / 0: Face 1: Mask 2: Hair 3: Torso 4: Leg 5: Parachute / bag 6: Shoes 7: Accessory 8: Undershirt 9: Kevlar 10: Badge 11: Torso 2
                            -- https://docs.fivem.net/natives/?_0xD4F7B05C
                            { component = 11, drawable = 4,  texture = 0 }, -- Torso
                            { component = 8,  drawable = 15, texture = 0 }, -- Shirt
                            { component = 4,  drawable = 25, texture = 0 }, -- Pants
                            { component = 6,  drawable = 16, texture = 4 }, -- Shoes
                            { component = 3,  drawable = 4,  texture = 0 }, -- Arms
                        },
                        props = {
                            -- Components / 0: Hats 1: Glasses 2: Ears 6: Watches 7: Bracelets
                            -- https://docs.fivem.net/natives/?_0x93376B65A266EB5F

                            --    { component = 0, drawable = 0, texture = 0 }, -- Hats
                        }
                    }
                },]]
            }
        },

        -- Personal Locker. Supports inventories: ox_inventory, qb-inventory, and qs-inventory
        --        Custom inventories can easily be added in wasabi_bridge/inventories/
        personalLocker = {
            enabled = true,                       -- Enable personal locker for this station?
            jobLock = 'police',                    -- Job lock?
            coords = vec3(-435.9238, 6009.9819, 36.995685), -- Area to prompt personal locker
            range = 1.5,                           -- Range it will prompt from coords above
            label = '[E] - Access Personal Locker',
            target = {
                enabled = true, -- If enabled, the location above will be obsolete
                label = 'Access Personal Locker',
                coords = vec3(-435.9238, 6009.9819, 36.995685),
                heading = 354.94,
                distance = 2.5,
                width = 2.0,
                length = 1.0,
                minZ = 30.69 - 0.9,
                maxZ = 30.69 + 0.9
            }
        },

        evidenceLocker = {
            enabled = true,                      -- Enable evidence locker for this station?
            jobLock = 'police',                   -- Job lock?
            coords = vec3(-453.7047, 5999.7685, 37.008331), -- Area to prompt personal locker
            range = 2.0,                          -- Range it will prompt from coords above
            label = '[E] - Access Evidence Locker',
            target = {
                enabled = true, -- If enabled, the location above will be obsolete
                label = 'Access Evidence Locker',
                coords = vec3(-453.7047, 5999.7685, 37.008331),
                heading = 266.23,
                distance = 2.5,
                width = 2.0,
                length = 1.0,
                minZ = 26.27 - 0.9,
                maxZ = 26.27 + 0.9
            }
        },


        vehicles = {                                   -- Vehicle Garage
            enabled = true,                            -- Enable? False if you have you're own way for medics to obtain vehicles.
            jobLock = 'police',                        -- Job lock? or access to all police jobs by using false
            zone = {
                 coords = vec3(-472.77, 6006.479, 31.302322), -- Area to prompt vehicle garage
                 range = 4.0,                           -- Range it will prompt from coords above
                 label = '[E] - Access Air Garage',
                 return_label = '[E] - Return Helio'
            },
            spawn = {
                --[[land = {
                    coords = vec3(458.78906, -992.4506, 25.700021), -- Coords of where land vehicle spawn/return
                    heading = 3.68
                },--]]
                air = {
                    coords = vec3(-475.2352, 5988.5297, 31.3365), -- Coords of where air vehicles spawn/return
                    heading = 317.23388
                }
            },
            options = {

                [0] = { -- [Cadet]                      -- Job grade as table name

                },

                [1] = { -- [Deputy I]

                },

                [2] = { -- [Deputy II]

                },

                [3] = { -- [Corporal]

                },

                [4] = { -- [Major]
                    ['polmav'] = {
                        label = 'Maverick',
                        category = 'air',
                    },
                },

                [5] = { -- [Lieutenant Colonel]
                    ['polmav'] = {
                        label = 'Maverick',
                        category = 'air',
                    },
                },

                [6] = { -- [Colonel]
                    ['polmav'] = {
                        label = 'Maverick',
                        category = 'air',
                    },
                },

                [7] = { -- [Under Sheriff]
                    ['polmav'] = {
                        label = 'Maverick',
                        category = 'air',
                    },
                },

                [8] = { -- [Sheriff]
                    ['polmav'] = {
                        label = 'Maverick',
                        category = 'air',
                    },
                },
            }
        }
    },
}
