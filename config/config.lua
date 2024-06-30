ConfigItens = {
    permission = 'police',
    coords = vector3(1406.24, 1107.53, 114.83), -- troque a cordenada para onde você quer o seu craft!
    -- updaload das imagens podem ser feita em qualquer site que preste esse serviço , 
    -- mas a recomendação é pelo site : https://fivemanage.com/ ou pelo discord
    vrp = false,
    esx = false,
    qbcore = true,
    qbox = false,

    craftList = {

        Colete = {
            name = 'Colete',
            spawName = 'armor',
            spawQtd = 1,
            img = 'https://r2.fivemanage.com/ubeyz6jPEoYzKSVIbToia/armour.png',
            ingredientes = {  -- tabela com os nomes do itens igual ao da base
                { item = "iron", quantidade = 10 },
                { item = "steel", quantidade = 10 },
                { item = "plastic", quantidade = 10 },
            },
            ingredientesPt = {  -- tabela com os nomes do itens traduzidos, chamados no frontend
                { item = "Ferro", quantidade = 10 },
                { item = "Aço", quantidade = 10 },
                { item = "Plastico", quantidade = 10 },
            }
        },

        FiveSeven = {
            name = 'FN Five-seven',
            spawName = 'weapon_pistol_mk2',
            spawQtd = 1,
            img = 'https://cdn.discordapp.com/attachments/1234982222550011982/1257042547851792494/weapon_pistol_mk2.png?ex=6682f79a&is=6681a61a&hm=691b7881cc60462216cf12e6d9c569dcc921a72d3dc87fe33f57155eb056597c&',
            ingredientes = {  -- tabela com os nomes do itens igual ao da base
                { item = "iron", quantidade = 10 },
                { item = "steel", quantidade = 20 },
                { item = "plastic", quantidade = 5 },
            },
            ingredientesPt = {  -- tabela com os nomes do itens traduzidos, chamados no frontend
                { item = "Ferro", quantidade = 10 },
                { item = "Aço", quantidade = 20 },
                { item = "Plastico", quantidade = 5 },
            }
        },

        Revolver = {
            name = 'Revolver MK2',
            spawName = 'weapon_revolver_mk2',
            spawQtd = 1,
            img = 'https://cdn.discordapp.com/attachments/1234982222550011982/1257042622296363130/weapon_revolver_mk2.png?ex=6682f7ab&is=6681a62b&hm=9e0c2c57371b0afb9c4ca8e2e3df9e66cc54db095ff667958130d335d0a53879&',
            ingredientes = {  -- tabela com os nomes do itens igual ao da base
                { item = "iron", quantidade = 15 },
                { item = "steel", quantidade = 15 },
                { item = "plastic", quantidade = 10 },
            },
            ingredientesPt = {  -- tabela com os nomes do itens traduzidos, chamados no frontend
                { item = "Ferro", quantidade = 15 },
                { item = "Aço", quantidade = 15 },
                { item = "Plastico", quantidade = 10 },
            }
        },

        MicroSMG = {
            name = 'Micro SMG',
            spawName = 'weapon_microsmg',
            spawQtd = 1,
            img = 'https://cdn.discordapp.com/attachments/1234982222550011982/1257042670694432858/weapon_microsmg.png?ex=6682f7b7&is=6681a637&hm=293c34ac8e9c80360421ea470943cefc3f79527e7904f9e62aa1eba1412e8cc4&',
            ingredientes = {  -- tabela com os nomes do itens igual ao da base
                { item = "iron", quantidade = 12 },
                { item = "steel", quantidade = 20 },
                { item = "plastic", quantidade = 10 },
            },
            ingredientesPt = {  -- tabela com os nomes do itens traduzidos, chamados no frontend
                { item = "Ferro", quantidade = 12 },
                { item = "Aço", quantidade = 20 },
                { item = "Plastico", quantidade = 10 },
            }
        },


        Submetralhadora = {
            name = 'Submetralhadora MK2',
            spawName = 'weapon_smg_mk2',
            spawQtd = 1,
            img = 'https://cdn.discordapp.com/attachments/1234982222550011982/1257042913108693133/weapon_smg_mk2.png?ex=6682f7f1&is=6681a671&hm=1c6e38d27dd0b7a40395fa05ce072b2041d92e00524ef82b52003e5cebedf698&',
            ingredientes = {  -- tabela com os nomes do itens igual ao da base
                { item = "iron", quantidade = 10 },
                { item = "steel", quantidade = 20},
                { item = "plastic", quantidade = 10 },
            },
            ingredientesPt = {  -- tabela com os nomes do itens traduzidos, chamados no frontend
                { item = "Ferro", quantidade = 10 },
                { item = "Aço", quantidade = 20 },
                { item = "Plastico", quantidade = 10 },
            }
        },

        AssaltRifle = {
            name = 'Fuzil de Assalto',
            spawName = 'weapon_assaultrifle',
            spawQtd = 1,
            img = 'https://cdn.discordapp.com/attachments/1234982222550011982/1257043209104785498/weapon_assaultrifle.png?ex=6682f837&is=6681a6b7&hm=9514ac6d5acab6682a055f578bba0e194489d166167ef8ae20ed0c79b0592e63&',
            ingredientes = {  -- tabela com os nomes do itens igual ao da base
                { item = "iron", quantidade = 20 },
                { item = "steel", quantidade = 20 },
                { item = "plastic", quantidade = 20 },
            },
            ingredientesPt = {  -- tabela com os nomes do itens traduzidos, chamados no frontend
                { item = "Ferro", quantidade = 20 },
                { item = "Aço", quantidade = 20 },
                { item = "Plastico", quantidade = 20 },
            }
        },

        
        
    },--fechamento do craftList
    

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