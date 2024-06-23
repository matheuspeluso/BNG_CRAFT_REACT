local QBCore = exports["qb-core"]:GetCoreObject()

RegisterNetEvent('teste:requisicao', function(cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local job = Player.PlayerData.job.name
    local permissao = ConfigItens.permission

    local isPolice = false
    if job == permissao then
       isPolice = true
    end
    TriggerClientEvent('teste:response', src, isPolice)
end)

function HasAllItems(item, source)
    if ConfigItens.craftList[item] then
        local ingredients = ConfigItens.craftList[item].ingredientes
        for _, ingredient in ipairs(ingredients) do
            if not exports['qb-inventory']:HasItem(source, ingredient.item, ingredient.quantidade) then
                return false
            end
        end
        return true
    else
        return false
    end
end

RegisterNetEvent('crafting')
AddEventHandler('crafting', function(nomeItem)
    local playerSource = source
    if HasAllItems(nomeItem, playerSource) then
        local ingredients = ConfigItens.craftList[nomeItem].ingredientes
        for _, ingredient in ipairs(ingredients) do
            exports.ox_inventory:RemoveItem(playerSource, ingredient.item, ingredient.quantidade)
        end
        local spawName = ConfigItens.craftList[nomeItem].spawName
        local spawQtd = ConfigItens.craftList[nomeItem].spawQtd
        exports.ox_inventory:AddItem(playerSource, spawName, spawQtd)  -- Utiliza spawQtd para adicionar a quantidade correta
        TriggerClientEvent('notify_bng_success', playerSource)
    else
        TriggerClientEvent('notify_bng_error', playerSource)
    end
end)
