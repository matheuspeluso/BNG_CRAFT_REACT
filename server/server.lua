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
    TriggerClientEvent('teste:response', src,isPolice)

end)


function HasAllItens(item, source)
    -- Verifica se o item existe na tabela de itens
    if ConfigItens.craftList[item] then
        -- Obtém a lista de ingredientes para o item especificado
        local ingredientes = ConfigItens.craftList[item].ingredientes
        
        -- Itera sobre cada ingrediente na lista
        for _, ingrediente in ipairs(ingredientes) do
            -- Verifica se o jogador possui a quantidade necessária do ingrediente
            if not exports['qb-inventory']:HasItem(source, ingrediente.item, ingrediente.quantidade) then
                -- Se o jogador não tiver um dos ingredientes, retorna false
                return false
            end
        end
        -- Se o jogador possuir todos os ingredientes, retorna true
        return true
    else
        -- Se o item não existir na tabela de itens, retorna false
        return false
    end
end

RegisterNetEvent('crafting')

AddEventHandler('crafting', function(nomeItem)
    
    if HasAllItens('WEAPON_ASSAULTRIFLE',source) and nomeItem == 'WEAPON_ASSAULTRIFLE' then
        exports.ox_inventory:RemoveItem(source, 'plastic', 10)
        exports.ox_inventory:RemoveItem(source, 'iron',25)
        exports.ox_inventory:RemoveItem(source, 'steel', 20)
        TriggerClientEvent('notify_bng_success', source)
        exports.ox_inventory:AddItem(source, 'WEAPON_ASSAULTRIFLE', 1)
    elseif HasAllItens('WEAPON_PISTOL_MK2',source) and nomeItem == 'WEAPON_PISTOL_MK2' then
        exports.ox_inventory:RemoveItem(source, 'plastic', 5)
        exports.ox_inventory:RemoveItem(source, 'iron',15)
        exports.ox_inventory:RemoveItem(source, 'steel', 20)
        TriggerClientEvent('notify_bng_success', source)
        exports.ox_inventory:AddItem(source, 'WEAPON_PISTOL_MK2', 1)
    elseif HasAllItens('ammo_9',source) and nomeItem == 'ammo_9' then
        exports.ox_inventory:RemoveItem(source, 'copper',6)
        exports.ox_inventory:RemoveItem(source, 'steel', 12)
        TriggerClientEvent('notify_bng_success', source)
        exports.ox_inventory:AddItem(source, 'ammo-9', 12)
        
    elseif HasAllItens('ammo_rifle2',source) and nomeItem == 'ammo_rifle2' then
        exports.ox_inventory:RemoveItem(source, 'copper',6)
        exports.ox_inventory:RemoveItem(source, 'steel', 12)
        TriggerClientEvent('notify_bng_success', source)
        exports.ox_inventory:AddItem(source, 'ammo-rifle2', 12)
    elseif HasAllItens('WEAPON_SMG',source) and nomeItem == 'WEAPON_SMG' then
        exports.ox_inventory:RemoveItem(source, 'iron',15)
        exports.ox_inventory:RemoveItem(source, 'steel', 20)
        exports.ox_inventory:RemoveItem(source, 'plastic', 10)
        TriggerClientEvent('notify_bng_success', source)
        exports.ox_inventory:AddItem(source, 'WEAPON_SMG', 1)
        
    elseif HasAllItens('lockpick',source) and nomeItem == 'lockpick' then
        print('lockpick no servidor!')
        exports.ox_inventory:RemoveItem(source, 'copper',1)
        exports.ox_inventory:RemoveItem(source, 'steel', 5)
        TriggerClientEvent('notify_bng_success', source)
        exports.ox_inventory:AddItem(source, 'lockpick', 1)
    else
        TriggerClientEvent('notify_bng_error', source)
    end
    -- exports['qb-inventory']:RemoveItem(source,'plastic',5,false,'qb-primeiroScripts:testRemove')
    -- exports['qb-inventory']:AddItem(source,'lockpick',1,false,'qb-primeiroScripts:testAdd')
end)

