if ConfigItens.qbox or ConfigItens.qbox then
    local QBCore = exports["qb-core"]:GetCoreObject()
end

if ConfigItens.vrpex then
    local Tunnel = module("vrp","lib/Tunnel")
    local Proxy = module("vrp","lib/Proxy")
    vRP = Proxy.getInterface("vRP")
    vRPclient = Tunnel.getInterface("vRP")
    src = {}
    Tunnel.bindInterface(GetCurrentResourceName(), src)
end


RegisterNetEvent('teste:requisicao', function(cb)
    
    src = source
    
    if ConfigItens.qbox or ConfigItens.qbcore then
        Player = QBCore.Functions.GetPlayer(src)
        job = Player.PlayerData.job.name
        permissao = ConfigItens.permission
        
        local isAllowed = false
    
        if job == permissao then
           isAllowed = true
        end
        TriggerClientEvent('teste:response', src, isAllowed)
    end

    if ConfigItens.vrpex then
        if vRP.hasPermission(vRP.getUserId(src), 'policia.permissao') then
            print("você é policial!")
            isAllowed = true
        end
        TriggerClientEvent('teste:response', src, isAllowed)
    end
    
end)

function HasAllItems(item, source)
    if ConfigItens.craftList[item] then
        print('dentro do hasallitens validação: ',ConfigItens.craftList[item])
        local ingredients = ConfigItens.craftList[item].ingredientes
        -- testes
        local tamanho = (#ingredients);
        for i = 1, tamanho, 1 do
            print(ingredients[i])
        end

        if ConfigItens.qbox or ConfigItens.qbcore then
            for _, ingredient in ipairs(ingredients) do
                -- verificação server para qbox e server para qbcore tb
                if not exports['qb-inventory']:HasItem(source, ingredient.item, ingredient.quantidade) then
                    print("não tem todos os itens!")
                    return false
                end
            end
            print("true do hasallitens!")
            return true
        end
    else
        return false
    end
end

RegisterNetEvent('crafting')
AddEventHandler('crafting', function(nomeItem)
    local playerSource = source
    print('resultado do HasAllItems', HasAllItems(nomeItem,playerSource))
    if HasAllItems(nomeItem, playerSource) then
        print("nome item dentro do hasallitens",nomeItem)
        local ingredients = ConfigItens.craftList[nomeItem].ingredientes
        for _, ingredient in ipairs(ingredients) do
            -- verificações de framework
            if ConfigItens.qbox then
                exports.ox_inventory:RemoveItem(playerSource, ingredient.item, ingredient.quantidade);
                print("nome item dentro do removeitem da qbx",nomeItem)
            elseif ConfigItens.qbcore then
                exports['qb-inventory']:RemoveItem(playerSource, ingredient.item, ingredient.quantidade);
                print("nome item dentro do removeitem da qbcore",nomeItem)
            end
        end
        local spawName = ConfigItens.craftList[nomeItem].spawName
        local spawQtd = ConfigItens.craftList[nomeItem].spawQtd
        print("spawName item dentro do hasallitens",spawName)
        print("spawQtd item dentro do hasallitens",spawQtd)

        -- verificações de framework
        if ConfigItens.qbox then
            print('framework qbox dentro do additem ? ',ConfigItens.qbox)
            TriggerClientEvent('notify_bng_success', playerSource)
            print("antes de puxar o item na qbox")
            exports.ox_inventory:AddItem(playerSource, spawName, spawQtd)
        elseif ConfigItens.qbcore then
            print('framework qbcore dentro do additem ? ',ConfigItens.qbcore)
            print(spawName)
            print("antes de puxar o item na qbcore!")
            exports['qb-inventory']:AddItem(playerSource, spawName, spawQtd)
            TriggerClientEvent('notify_bng_success', playerSource)
        end
    else
        -- notify error para qbox e qbcore
        if ConfigItens.qbox or ConfigItens.qbcore then
            print("entrou no error da qbcore e da qbox!")
            print("qbox dentro do else? ",ConfigItens.qbox , "qbcore dentro do else? ", ConfigItens.qbcore)
            print('nome item dentro do erro: ',nomeItem)
            TriggerClientEvent('notify_bng_error', playerSource)
        end
    end
end)
