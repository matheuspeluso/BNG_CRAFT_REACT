local QBCore = exports["qb-core"]:GetCoreObject()

-- criação do blip
CreateThread(function() 
    while true do
        sleep = 1000
        local ped = PlayerPedId()
        local playerPos = GetEntityCoords(ped)
        local makerPos = vector3(1289.42, -1728.94, 53.34)

        local distance  = #(playerPos - makerPos)

        if distance < 7 then
            sleep = 0
            DrawMarker(20, makerPos.x, makerPos.y, makerPos.z, 0, 0, 0, 0, 0, 0, 0.4, 0.4, 0.4, 255, 255, 255, 200, false, true, 2, true, false, false, false)

            if IsControlJustPressed(0,38) then
                SendNUIMessage({
                    type = 'open'
                })
                SetNuiFocus(true,true)
            end
        end
        Wait(sleep)
        
    end

end)

RegisterNUICallback('fecharTela', function ()
    SetNuiFocus(false,false)
end)

RegisterNUICallback('itemCraft',function (data,cb)
    local item = data.item;
    print("Item recebido:", item)
    if item == 'Ak-47' then
        TriggerServerEvent('crafting','WEAPON_ASSAULTRIFLE')
    elseif item == 'Pistol_mk2' then
        TriggerServerEvent('crafting','WEAPON_PISTOL_MK2')
    elseif item == 'Munição de 9mm' then
        TriggerServerEvent('crafting','ammo_9')
    elseif item == 'Munição de Rifle' then
        TriggerServerEvent('crafting','ammo_rifle2')
    elseif item == 'Submetralhadora' then
        TriggerServerEvent('crafting','WEAPON_SMG')
    elseif item == 'Lockpick' then
        print(item)
        TriggerServerEvent('crafting','lockpick')

    end
end)