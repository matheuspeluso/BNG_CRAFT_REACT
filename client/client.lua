local QBCore = exports["qb-core"]:GetCoreObject()

-- criação do blip

isPolice = false

RegisterNetEvent('teste:response', function(isCoxa)
    isPolice = isCoxa
    print("recebeu resposta",isPolice)
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
                TriggerServerEvent('teste:requisicao')
                
                Wait(500)
                print('is police dentro do trigger ',isPolice)
                if isPolice then
                    SendNUIMessage({
                        type = 'open',
                        itens = ConfigItens.craftList
                    })
                    SetNuiFocus(true,true)

                    -- print(json.encode())
                end
            end
        end
        Wait(sleep)
    end
end)

local function handleCrafting(item)
    if item == 'Ak-47' then
        TriggerServerEvent('crafting', 'WEAPON_ASSAULTRIFLE')
    elseif item == 'Pistol_mk2' then
        TriggerServerEvent('crafting', 'WEAPON_PISTOL_MK2')
    elseif item == 'Munição de 9mm' then
        TriggerServerEvent('crafting', 'ammo_9')
    elseif item == 'Munição de Rifle' then
        TriggerServerEvent('crafting', 'ammo_rifle2')
    elseif item == 'Submetralhadora' then
        TriggerServerEvent('crafting', 'WEAPON_SMG')
    elseif item == 'Lockpick' then
        TriggerServerEvent('crafting', 'lockpick')
    end
end

local function toggleCraftBNG(item)
    local isCanceled = false

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
            TriggerEvent('notify_bng_success')
        end
    end, function() -- Cancel
        isCanceled = true
        QCBore.Functions.Notify("Canceled", "error")
        TriggerEvent('notify_bng_error')
    end, 'fas fa-microchip')
end

RegisterNUICallback('fecharTela', function ()
    SetNuiFocus(false, false)
end)

RegisterNetEvent('notify_bng_success', function()
    exports.qbx_core:Notify('Item criado com sucesso!', 'success', 6000, 'Verique na sua bolsa!', 'center-right')
end)

RegisterNetEvent('notify_bng_error', function()
    exports.qbx_core:Notify('Você não possui os ingredientes necessários ou o processo foi cancelado!', 'error', 6000, 'Verique seus ingredientes!', 'center-right')
end)

RegisterNUICallback('itemCraft', function (data, cb)
    local item = data.item
    toggleCraftBNG(item)
end)
