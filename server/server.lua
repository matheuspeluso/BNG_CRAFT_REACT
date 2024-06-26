local QBCore = exports["qb-core"]:GetCoreObject()

RegisterNetEvent('teste:requisicao', function(cb)

    -- verificação server para qbox e server para qbcore tb
    if ConfigItens.qbox or ConfigItens.qbcore then
        src = source
        Player = QBCore.Functions.GetPlayer(src)
        job = Player.PlayerData.job.name
        permissao = ConfigItens.permission
    end
    
    local isAllowed = false

    if job == permissao then
       isAllowed = true
    end
    TriggerClientEvent('teste:response', src, isAllowed)
end)

function HasAllItems(item, source)
    if ConfigItens.craftList[item] then
        local ingredients = ConfigItens.craftList[item].ingredientes
        for _, ingredient in ipairs(ingredients) do
            -- verificação server para qbox e server para qbcore tb
            if ConfigItens.qbox or ConfigItens.qbcore then
                if not exports['qb-inventory']:HasItem(source, ingredient.item, ingredient.quantidade) then
                    return false
                end
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
            -- verificações de framework
            if ConfigItens.qbox then
                exports.ox_inventory:RemoveItem(playerSource, ingredient.item, ingredient.quantidade);
            elseif ConfigItens.qbcore then
                exports['qb-inventory']:RemoveItem(playerSource, ingredient.item, ingredient.quantidade);
            end
        end
        local spawName = ConfigItens.craftList[nomeItem].spawName
        local spawQtd = ConfigItens.craftList[nomeItem].spawQtd

        -- verificações de framework
        if ConfigItens.qbox then
            exports.ox_inventory:AddItem(playerSource, spawName, spawQtd)
        elseif ConfigItens.qbcore then
            exports['qb-inventory']:AddItem(playerSource, spawName, spawQtd)
        end
         -- notify sucess para qbox e qbcore
         if ConfigItens.qbox or ConfigItens.qbcore then
            TriggerClientEvent('notify_bng_success', playerSource)
        end
    else
        -- notify error para qbox e qbcore
        if ConfigItens.qbox or ConfigItens.qbcore then
            TriggerClientEvent('notify_bng_error', playerSource)
        end
    end
end)
