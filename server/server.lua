local QBCore = exports["qb-core"]:GetCoreObject()

local itens = {
    WEAPON_ASSAULTRIFLE = {
        ingredientes = {  -- Sub-tabela para os ingredientes
            { item = "plastic", quantidade = 10 },
            { item = "iron", quantidade = 25 },
            { item = "steel", quantidade = 30 }
        }
    },
    WEAPON_PISTOL_MK2 = {
        ingredientes = {  -- Sub-tabela para os ingredientes
            { item = "steel", quantidade = 20 },
            { item = "plastic", quantidade = 5 },
            { item = "iron", quantidade = 15 },
        }
    },
    ammo_9 = {
        ingredientes = {  -- Sub-tabela para os ingredientes
            { item = "steel", quantidade = 12 },
            { item = "copper", quantidade = 6 },
        }
    },
    ammo_rifle2 = {
        ingredientes = {  -- Sub-tabela para os ingredientes
            { item = "steel", quantidade = 12 },
            { item = "copper", quantidade = 6 },
        }
    },
    WEAPON_SMG = {
        ingredientes = {  -- Sub-tabela para os ingredientes
            { item = "plastic", quantidade = 10 },
            { item = "iron", quantidade = 15 },
            { item = "steel", quantidade = 20 }
        }
    },
    lockpick = {
        ingredientes = {  -- Sub-tabela para os ingredientes
            { item = "copper", quantidade = 1 },
            { item = "steel", quantidade = 5 }
        }
    },

}

function HasAllItens(item, source)
    -- Verifica se o item existe na tabela de itens
    if itens[item] then
        -- Obtém a lista de ingredientes para o item especificado
        local ingredientes = itens[item].ingredientes
        
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

-- style = {
--     backgroundColor = '#141517',
--     color = '#C1C2C5',
--     ['.description'] = {
--       color = '#909296'
--     }
-- }

AddEventHandler('crafting', function(nomeItem)
    
    print('crafting : ', nomeItem);
    print(HasAllItens('lockpick',source))
    -- HasAllItens({'plastic','copper','iron'});


    if HasAllItens('WEAPON_ASSAULTRIFLE',source) and nomeItem == 'WEAPON_ASSAULTRIFLE' then
        exports.ox_inventory:RemoveItem(source, 'plastic', 10)
        exports.ox_inventory:RemoveItem(source, 'iron',25)
        exports.ox_inventory:RemoveItem(source, 'steel', 20)
        exports.ox_inventory:AddItem(source, 'WEAPON_ASSAULTRIFLE', 1)
        TriggerClientEvent('notify_bng_success', source)
    elseif HasAllItens('WEAPON_PISTOL_MK2',source) and nomeItem == 'WEAPON_PISTOL_MK2' then
        exports.ox_inventory:RemoveItem(source, 'plastic', 5)
        exports.ox_inventory:RemoveItem(source, 'iron',15)
        exports.ox_inventory:RemoveItem(source, 'steel', 20)
        exports.ox_inventory:AddItem(source, 'WEAPON_PISTOL_MK2', 1)
        TriggerClientEvent('notify_bng_success', source)
    elseif HasAllItens('ammo_9',source) and nomeItem == 'ammo_9' then
        exports.ox_inventory:RemoveItem(source, 'copper',6)
        exports.ox_inventory:RemoveItem(source, 'steel', 12)
        exports.ox_inventory:AddItem(source, 'ammo-9', 12)
        TriggerClientEvent('notify_bng_success', source)
        
    elseif HasAllItens('ammo_rifle2',source) and nomeItem == 'ammo_rifle2' then
        exports.ox_inventory:RemoveItem(source, 'copper',6)
        exports.ox_inventory:RemoveItem(source, 'steel', 12)
        exports.ox_inventory:AddItem(source, 'ammo-rifle2', 12)
        TriggerClientEvent('notify_bng_success', source)
    elseif HasAllItens('WEAPON_SMG',source) and nomeItem == 'WEAPON_SMG' then
        exports.ox_inventory:RemoveItem(source, 'iron',15)
        exports.ox_inventory:RemoveItem(source, 'steel', 20)
        exports.ox_inventory:RemoveItem(source, 'plastic', 10)
        exports.ox_inventory:AddItem(source, 'WEAPON_SMG', 1)
        TriggerClientEvent('notify_bng_success', source)
        
    elseif HasAllItens('lockpick',source) and nomeItem == 'lockpick' then
        print('lockpick no servidor!')
        exports.ox_inventory:RemoveItem(source, 'copper',1)
        exports.ox_inventory:RemoveItem(source, 'steel', 5)
        exports.ox_inventory:AddItem(source, 'lockpick', 1)
        TriggerClientEvent('notify_bng_success', source)
    else
        TriggerClientEvent('notify_bng_error', source)
    end
    -- exports['qb-inventory']:RemoveItem(source,'plastic',5,false,'qb-primeiroScripts:testRemove')
    -- exports['qb-inventory']:AddItem(source,'lockpick',1,false,'qb-primeiroScripts:testAdd')
end)

