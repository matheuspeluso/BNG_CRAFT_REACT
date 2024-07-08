ConfigItens = {
    permission = 'dono.permissao',
    coords = vector3(-74.97, -815.34, 326.18), -- troque a cordenada para onde você quer o seu craft!
    -- updaload das imagens podem ser feita em qualquer site que preste esse serviço , 
    -- mas a recomendação é pelo site : https://fivemanage.com/ ou pelo discord
    vrpex = true,
    esx = false,
    qbcore = false,
    qbox = false,

   craftList = {
    
            lockpick = {
                name = 'Lockpick',
                spawName = 'lockpick',
                spawQtd = 1,
                img = 'https://r2.fivemanage.com/ubeyz6jPEoYzKSVIbToia/lockpick.png',
                ingredientes = {  -- tabela com os nomes do itens igual ao da base
                    { item = "ferro", quantidade = 2 },
                    { item = "bronze", quantidade = 1 }
                },
                ingredientesPt = {  -- tabela com os nomes do itens traduzidos, chamados no frontend
                    { item = "Ferro", quantidade = 2 },
                    { item = "Bronze", quantidade = 1 }
                }
            },
    
            
        }, -- fechamento do craftlist
    

        -- craftList = {
        --     WEAPON_ASSAULTRIFLE = {
        --         name = 'Ak-47',
        --         spawName = 'WEAPON_ASSAULTRIFLE',
        --         spawQtd = 1,
        --         img = 'https://r2.fivemanage.com/ubeyz6jPEoYzKSVIbToia/WEAPON_ASSAULTRIFLE.png',
        --         ingredientes = {  -- tabela com os nomes do itens igual ao da base
        --             { item = "plastic", quantidade = 10 },
        --             { item = "iron", quantidade = 25 },
        --             { item = "steel", quantidade = 30 }
        --         },
        --         ingredientesPt = {  -- tabela com os nomes do itens traduzidos, chamados no frontend
        --             { item = "Plastico", quantidade = 10 },
        --             { item = "Ferro", quantidade = 25 },
        --             { item = "Aço", quantidade = 30 }
        --         },
        
        --     },
    
        --     WEAPON_PISTOL_MK2 = {
        --         name = 'Pistol_mk2',
        --         spawName = 'WEAPON_PISTOL_MK2',
        --         spawQtd = 1,
        --         img = 'https://r2.fivemanage.com/ubeyz6jPEoYzKSVIbToia/WEAPON_PISTOL_MK2.png',
        --         ingredientes = {  -- tabela com os nomes do itens igual ao da base
        --             { item = "steel", quantidade = 20 },
        --             { item = "plastic", quantidade = 5 },
        --             { item = "iron", quantidade = 15 },
        --         },
        --         ingredientesPt = {  -- tabela com os nomes do itens traduzidos, chamados no frontend
        --             { item = "Aço", quantidade = 20 },
        --             { item = "Plastico", quantidade = 5 },
        --             { item = "Ferro", quantidade = 15 },
        --         },
        --     },
    
        --     ammo_9 = {
        --         name = 'Munição de 9mm',
        --         spawName = 'ammo-9',
        --         spawQtd = 12,
        --         img = 'https://r2.fivemanage.com/ubeyz6jPEoYzKSVIbToia/ammo-9.png',
        --         ingredientes = {  -- tabela com os nomes do itens igual ao da base
        --             { item = "steel", quantidade = 12 },
        --             { item = "copper", quantidade = 6 },
        --         },
        --         ingredientesPt = {  -- tabela com os nomes do itens traduzidos, chamados no frontend
        --             { item = "Aço", quantidade = 12 },
        --             { item = "Cobre", quantidade = 6 },
        --         }
        --     },
    
        --     ammo_rifle2 = {
        --         name = 'Munição de Rifle',
        --         spawName = 'ammo-rifle2',
        --         spawQtd = 12,
        --         img = 'https://r2.fivemanage.com/ubeyz6jPEoYzKSVIbToia/ammo-rifle2.png',
        --         ingredientes = {  -- tabela com os nomes do itens igual ao da base
        --             { item = "steel", quantidade = 12 },
        --             { item = "copper", quantidade = 6 },
        --         },
        --         ingredientesPt = {  -- tabela com os nomes do itens traduzidos, chamados no frontend
        --             { item = "Aço", quantidade = 12 },
        --             { item = "Cobre", quantidade = 6 },
        --         }
        --     },
    
        --     WEAPON_SMG = {
        --         name = 'Submetralhadora',
        --         spawName = 'WEAPON_SMG',
        --         spawQtd = 1,
        --         img = 'https://r2.fivemanage.com/ubeyz6jPEoYzKSVIbToia/WEAPON_SMG.png',
        --         ingredientes = {  -- tabela com os nomes do itens igual ao da base
        --             { item = "plastic", quantidade = 10 },
        --             { item = "iron", quantidade = 15 },
        --             { item = "steel", quantidade = 20 }
        --         },
        --         ingredientesPt = {  -- tabela com os nomes do itens traduzidos, chamados no frontend
        --             { item = "Plastico", quantidade = 10 },
        --             { item = "Ferro", quantidade = 15 },
        --             { item = "Aço", quantidade = 20 }
        --         }
        --     },
    
        --     lockpick = {
        --         name = 'Lockpick',
        --         spawName = 'lockpick',
        --         spawQtd = 1,
        --         img = 'https://r2.fivemanage.com/ubeyz6jPEoYzKSVIbToia/lockpick.png',
        --         ingredientes = {  -- tabela com os nomes do itens igual ao da base
        --             { item = "copper", quantidade = 1 },
        --             { item = "steel", quantidade = 5 }
        --         },
        --         ingredientesPt = {  -- tabela com os nomes do itens traduzidos, chamados no frontend
        --             { item = "Cobre", quantidade = 1 },
        --             { item = "Aço", quantidade = 5 }
        --         }
        --     },
    
        --     AP_Pistol = {
        --         name = 'AP Pistol',
        --         spawName = 'WEAPON_APPISTOL',
        --         spawQtd = 1,
        --         img = 'https://r2.fivemanage.com/ubeyz6jPEoYzKSVIbToia/WEAPON_APPISTOL.png',
        --         ingredientes = {  -- tabela com os nomes do itens igual ao da base
        --             { item = "iron", quantidade = 15 },
        --             { item = "steel", quantidade = 20 },
        --             { item = "plastic", quantidade = 10 },
        --         },
        --         ingredientesPt = {  -- tabela com os nomes do itens traduzidos, chamados no frontend
        --             { item = "Cobre", quantidade = 15 },
        --             { item = "Aço", quantidade = 20 },
        --             { item = "Plastico", quantidade = 10 },
        --         }
        --     },
    
        --     Colete = {
        --         name = 'Colete',
        --         spawName = 'armour',
        --         spawQtd = 1,
        --         img = 'https://r2.fivemanage.com/ubeyz6jPEoYzKSVIbToia/armour.png',
        --         ingredientes = {  -- tabela com os nomes do itens igual ao da base
        --             { item = "iron", quantidade = 10 },
        --             { item = "steel", quantidade = 10 },
        --             { item = "plastic", quantidade = 10 },
        --         },
        --         ingredientesPt = {  -- tabela com os nomes do itens traduzidos, chamados no frontend
        --             { item = "Ferro", quantidade = 10 },
        --             { item = "Aço", quantidade = 10 },
        --             { item = "Plastico", quantidade = 10 },
        --         }
        --     },
            
        -- },

}