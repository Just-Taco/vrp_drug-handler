-- Created by Taco
-- Created by Taco
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRPclient = Tunnel.getInterface("vRP", "tacos_kokainselger") 
vRP = Proxy.getInterface("vRP")

RegisterServerEvent("Kokain")
AddEventHandler("Kokain", function()
    local source = source
    local user_id = vRP.getUserId({source})
    if vRP.tryFullPayment({user_id,5000}) then
        vRP.giveInventoryItem({user_id,"kokain",10,true})
        TriggerClientEvent("pNotify:SendNotification", source,{text = "Du gav 5000 til manden", type = "success", queue = "global", timeout = 5000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
    end
end)

RegisterServerEvent("Skunk")
AddEventHandler("Skunk", function()
    local source = source
    local user_id = vRP.getUserId({source})
    if vRP.tryFullPayment({user_id,5000}) then
        vRP.giveInventoryItem({user_id,"skunk",10,true})
        TriggerClientEvent("pNotify:SendNotification", source,{text = "Du gav 5000 til manden", type = "success", queue = "global", timeout = 5000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
    end
end)

RegisterServerEvent("lsd")
AddEventHandler("lsd", function()
    local source = source
    local user_id = vRP.getUserId({source})
    if vRP.tryFullPayment({user_id,4000}) then
        vRP.giveInventoryItem({user_id,"lsd",10,true})
        TriggerClientEvent("pNotify:SendNotification", source,{text = "Du gav 6500 til manden", type = "success", queue = "global", timeout = 5000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
    end
end)