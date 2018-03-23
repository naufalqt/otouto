 -- Promotes mods & admins when they join a group.
local autils = require('otouto.autils')

local P = {}

function P:init() -- luacheck: ignore self
    P.triggers = {''}
    P.administration = true
end

function P:action(msg, _group, _user)
    if msg.new_chat_member then
        local rank = autils.rank(self, msg.new_chat_member.id, msg.chat.id)
        if rank > 1 then
            autils.promote_admin(msg.chat.id, msg.new_chat_member.id, rank > 2)
        end
    end
    return true
end

return P
