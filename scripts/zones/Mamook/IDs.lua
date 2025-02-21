-----------------------------------
-- Area: Mamook
-----------------------------------
require("scripts/globals/zone")
-----------------------------------

zones = zones or {}

zones[xi.zone.MAMOOK] =
{
    text =
    {
        NOTHING_HAPPENS          = 119,  -- Nothing happens...
        ITEM_CANNOT_BE_OBTAINED  = 6383, -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED            = 6389, -- Obtained: <item>.
        GIL_OBTAINED             = 6390, -- Obtained <number> gil.
        KEYITEM_OBTAINED         = 6392, -- Obtained key item: <keyitem>.
        CARRIED_OVER_POINTS      = 7000, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY  = 7001, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!<space>
        LOGIN_NUMBER             = 7002, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        FISHING_MESSAGE_OFFSET   = 7050, -- You can't fish here.
        LOGGING_IS_POSSIBLE_HERE = 7535, -- Logging is possible here if you have <item>.
        SICKLY_SWEET             = 8645, -- A sickly sweet fragrance pervades the air...
        DRAWS_NEAR               = 8667, -- Something draws near!
        COMMON_SENSE_SURVIVAL    = 9538, -- It appears that you have arrived at a new survival guide provided by the Adventurers' Mutual Aid Network. Common sense dictates that you should now be able to teleport here from similar tomes throughout the world.
    },
    mob =
    {
        ZIZZY_ZILLAH_PH =
        {
            [17043560]           = 17043554,
            [17043561]           = 17043554,
            [17043562]           = 17043554,
            [17043563]           = 17043554,
            [17043564]           = 17043554,
        },
        FIREDANCE_MAGMAAL_JA_PH =
        {
            [17043773]           = 17043779, -- -201.522 17.209 -363.865
            [17043774]           = 17043779, -- -206.458 17.525 -373.798
        },
        GULOOL_JA_JA             = 17043875,
        CHAMROSH                 = 17043887,
        IRIRI_SAMARIRI           = 17043888,
        POROGGO_CASANOVA         = 17043881,
        MIKILULU                 = 17043882,
        MIKIRURU                 = 17043883,
        NIKILULU                 = 17043884,
        MIKILURU                 = 17043885,
        MIKIRULU                 = 17043886,
    },
    npc =
    {
        LOGGING =
        {
            17044014,
            17044015,
            17044016,
            17044017,
            17044018,
            17044019,
        },
    },
}

return zones[xi.zone.MAMOOK]
