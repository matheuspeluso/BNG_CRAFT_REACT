if ConfigItens.qbcore or ConfigItens.qbox then
    local QBCore = exports["qb-core"]:GetCoreObject() 
end

if ConfigItens.vrpex then
    local Tunnel = module("vrp","lib/Tunnel")
    local Proxy = module("vrp","lib/Proxy")
    vRP = Proxy.getInterface("vRP")
    
    vSERVER = Tunnel.getInterface(GetCurrentResourceName())
end

-- criação do blip

isPolice = false

RegisterNetEvent('teste:response', function(isCoxa)
    isPolice = isCoxa
    -- print("recebeu resposta",isPolice)
    -- print('is police dentro do trigger ',isPolice)
    if isPolice then
        SendNUIMessage({
            type = 'open',
            itens = ConfigItens.craftList
        })
        SetNuiFocus(true,true)
    end
end)

CreateThread(function() 
    while true do
        sleep = 1000
        local ped = PlayerPedId()
        local playerPos = GetEntityCoords(ped)
        local makerPos = ConfigItens.coords

        local distance  = #(playerPos - makerPos)

        if distance < 7 then
            
            sleep = 0
            DrawMarker(20, makerPos.x, makerPos.y, makerPos.z, 0, 0, 0, 0, 0, 0, 0.4, 0.4, 0.4, 255, 255, 255, 200, false, true, 2, true, false, false, false)

            if IsControlJustPressed(0,38) then
                -- está passando na vrpex!
                TriggerServerEvent('teste:requisicao')
            end
        end
        Wait(sleep)
    end
end)

-- parte refatorada para evitar muitos if e ficar iterativo e automatizado !
local function handleCrafting(item)
    local itemName = nil
    for key, value in pairs(ConfigItens.craftList) do
        if value.name == item then
            itemName = key
            print("item name recebeu a key ? ",itemName)
            break
        end
    end

    if itemName then
        TriggerServerEvent('crafting', itemName)
    else
        print('Item não encontrado no config.lua para crafting:', item)
    end
end

-- Progressbar e animação qbcore e qbox
local function toggleCraftBNG(item)
    local isCanceled = false
    if ConfigItens.qbcore or ConfigItens.qbox then
        QBCore.Functions.Progressbar("craftbng", "Montando ...", 15000, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            canCancel = false,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
            anim = 'machinic_loop_mechandplayer',
            flags = 1,
        }, {}, {}, function() -- Done
            if not isCanceled then
                handleCrafting(item)
            end
        end, function() -- Cancel
            isCanceled = true
            -- QCBore.Functions.Notify("Canceled", "error",6000)
            TriggerEvent('notify_bng_error')
        end, 'fas fa-microchip')
    end

    if ConfigItens.vrpex then
        -- progressbar teste vrpex
        local time = 10000;

        local dict  = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@'
        RequestAnimDict(dict)
        while not HasAnimDictLoaded(dict) do
        Citizen.Wait(100)
        end

        TaskPlayAnim(PlayerPedId(),dict, 'machinic_loop_mechandplayer', 8.0, 8.0, time, 49, -1, true, false, true)
        TriggerEvent("progress", time, "Montando as peças...")
        Wait(time)
        
        handleCrafting(item)
    end
end

RegisterNUICallback('fecharTela', function ()
    SetNuiFocus(false, false)
end)

--notificação sucesso
RegisterNetEvent('notify_bng_success', function()
    if ConfigItens.qbox then
        exports.qbx_core:Notify('Item criado com sucesso!', 'success', 6000, 'Verique na sua bolsa!', 'center-right')
        print("print no client -- notify_bng_success !")
    elseif ConfigItens.qbcore then
        QBCore.Functions.Notify('Item criado com sucesso!', "primary", 6000)
    end
end)

-- notificação error
RegisterNetEvent('notify_bng_error', function()
    if ConfigItens.qbox then
        exports.qbx_core:Notify('Você não possui os ingredientes necessários ou o processo foi cancelado!', 'error', 6000, 'Verique seus ingredientes!', 'center-right')
        print("print no client -- notify_bng_error !")
    elseif ConfigItens.qbcore then
        QBCore.Functions.Notify('Você não possui os ingredientes necessários ou o processo foi cancelado!', "primary", 6000)
    end
end)

RegisterNUICallback('itemCraft', function (data, cb)
    local item = data.item
    toggleCraftBNG(item)
end)
