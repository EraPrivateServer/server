-----------------------------------
-- Area: North Gustaberg
--  NPC: Cavernous Maw
-- !pos -78 -0.5 600 106
-- Teleports Players to Abyssea - Grauberg
-----------------------------------
local ID = require("scripts/zones/North_Gustaberg/IDs")
require("scripts/globals/settings")
require("scripts/globals/abyssea")
require("scripts/globals/quests")
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    if xi.settings.ENABLE_ABYSSEA == 1 and player:getMainLvl() >= 30 then
        if
            xi.abyssea.getTravStonesTotal(player) >= 1 and
            player:getQuestStatus(xi.quest.log_id.ABYSSEA, xi.quest.id.abyssea.DAWN_OF_DEATH) == QUEST_ACCEPTED and
            player:getQuestStatus(xi.quest.log_id.ABYSSEA, xi.quest.id.abyssea.AN_ULCEROUS_URAGNITE) == QUEST_AVAILABLE
        then
            player:startEvent(0)
        else
            player:startEvent(908, 0, 1) -- No param = no entry.
        end
    else
        player:messageSpecial(ID.text.NOTHING_HAPPENS)
    end
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
    if csid == 0 then
        player:addQuest(xi.quest.log_id.ABYSSEA, xi.quest.id.abyssea.AN_ULCEROUS_URAGNITE)
    elseif csid == 1 then
        -- Killed Amphitrite
    elseif csid == 908 and option == 1 then
        player:setPos(-555, 31, -760, 0, 254)
    end
end

return entity
