ConfigItens = {
    permission = 'police',
    coords = vector3(-156.22, -1625.44, 33.65), -- troque a cordenada para onde você quer o seu craft!

    craftList = {
        WEAPON_ASSAULTRIFLE = {
            name = 'Ak-47',
            spawName = 'WEAPON_ASSAULTRIFLE',
            spawQtd = 1,
            img = 'https://cdn.discordapp.com/attachments/1240421138887213108/1251315557630869524/WEAPON_ASSAULTRIFLE_MK2.png?ex=66701c2d&is=666ecaad&hm=dc2ac969b776f0b9ff65603e06cf9e22e114c13278aeeebd3bc1cb8afe252685&',
            ingredientes = {  -- tabela com os nomes do itens igual ao da base
                { item = "plastic", quantidade = 10 },
                { item = "iron", quantidade = 25 },
                { item = "steel", quantidade = 30 }
            },
            ingredientesPt = {  -- tabela com os nomes do itens traduzidos, chamados no frontend
                { item = "Plastico", quantidade = 10 },
                { item = "Ferro", quantidade = 25 },
                { item = "Aço", quantidade = 30 }
            },
    
        },

        WEAPON_PISTOL_MK2 = {
            name = 'Pistol_mk2',
            spawName = 'WEAPON_PISTOL_MK2',
            spawQtd = 1,
            img = 'https://cdn.discordapp.com/attachments/1240421138887213108/1251324442194214922/WEAPON_PISTOL_MK2.png?ex=66702473&is=666ed2f3&hm=6dce9cae1068b6489f086d33b1a12d561df2f40b833f7ac656fc865289d6ca07&',
            ingredientes = {  -- tabela com os nomes do itens igual ao da base
                { item = "steel", quantidade = 20 },
                { item = "plastic", quantidade = 5 },
                { item = "iron", quantidade = 15 },
            },
            ingredientesPt = {  -- tabela com os nomes do itens traduzidos, chamados no frontend
                { item = "Aço", quantidade = 20 },
                { item = "Plastico", quantidade = 5 },
                { item = "Ferro", quantidade = 15 },
            },
        },

        ammo_9 = {
            name = 'Munição de 9mm',
            spawName = 'ammo-9',
            spawQtd = 12,
            img = 'https://cdn.discordapp.com/attachments/1240421138887213108/1251947725767970927/ammo-9.png?ex=66706ead&is=666f1d2d&hm=5485cfe6c14240a48dcb79cf5f1d411db220a2c249a0317ea61963c81c965beb&',
            ingredientes = {  -- tabela com os nomes do itens igual ao da base
                { item = "steel", quantidade = 12 },
                { item = "copper", quantidade = 6 },
            },
            ingredientesPt = {  -- tabela com os nomes do itens traduzidos, chamados no frontend
                { item = "Aço", quantidade = 12 },
                { item = "Cobre", quantidade = 6 },
            }
        },

        ammo_rifle2 = {
            name = 'Munição de Rifle',
            spawName = 'ammo-rifle2',
            spawQtd = 12,
            img = 'https://cdn.discordapp.com/attachments/1240421138887213108/1252032494673330327/ammo-rifle2.png?ex=6670bda0&is=666f6c20&hm=7eee87961895b857cf205135df9972f22b7db96dd1a49e64d1137365e73292bf&',
            ingredientes = {  -- tabela com os nomes do itens igual ao da base
                { item = "steel", quantidade = 12 },
                { item = "copper", quantidade = 6 },
            },
            ingredientesPt = {  -- tabela com os nomes do itens traduzidos, chamados no frontend
                { item = "Aço", quantidade = 12 },
                { item = "Cobre", quantidade = 6 },
            }
        },

        WEAPON_SMG = {
            name = 'Submetralhadora',
            spawName = 'WEAPON_SMG',
            spawQtd = 1,
            img = 'https://cdn.discordapp.com/attachments/1240421138887213108/1252036208456896564/WEAPON_SMG.png?ex=6670c115&is=666f6f95&hm=4e12f752b5228df38178ac5b45fb19f00bd93f30df58a67c49b8b915bbd71569&',
            ingredientes = {  -- tabela com os nomes do itens igual ao da base
                { item = "plastic", quantidade = 10 },
                { item = "iron", quantidade = 15 },
                { item = "steel", quantidade = 20 }
            },
            ingredientesPt = {  -- tabela com os nomes do itens traduzidos, chamados no frontend
                { item = "Plastico", quantidade = 10 },
                { item = "Ferro", quantidade = 15 },
                { item = "Aço", quantidade = 20 }
            }
        },

        lockpick = {
            name = 'Lockpick',
            spawName = 'lockpick',
            spawQtd = 1,
            img = 'https://cdn.discordapp.com/attachments/1240421138887213108/1249207739708608512/lockpick.png?ex=6671ab9e&is=66705a1e&hm=42bddde90e425234eef9a87eb95c3caacf7729db33ffbd085ee747a79f747e8f&',
            ingredientes = {  -- tabela com os nomes do itens igual ao da base
                { item = "copper", quantidade = 1 },
                { item = "steel", quantidade = 5 }
            },
            ingredientesPt = {  -- tabela com os nomes do itens traduzidos, chamados no frontend
                { item = "Cobre", quantidade = 1 },
                { item = "Aço", quantidade = 5 }
            }
        },

        AP_Pistol = {
            name = 'AP Pistol',
            spawName = 'WEAPON_APPISTOL',
            spawQtd = 1,
            img = 'https://cdn.discordapp.com/attachments/1240421138887213108/1254531389001564192/WEAPON_APPISTOL.png?ex=6679d4e7&is=66788367&hm=08b275a203fb9baab9d4fc22ddc87c0623ac6c122247318a888c93f6e91997ff&',
            ingredientes = {  -- tabela com os nomes do itens igual ao da base
                { item = "iron", quantidade = 15 },
                { item = "steel", quantidade = 20 },
                { item = "plastic", quantidade = 10 },
            },
            ingredientesPt = {  -- tabela com os nomes do itens traduzidos, chamados no frontend
                { item = "Cobre", quantidade = 15 },
                { item = "Aço", quantidade = 20 },
                { item = "Plastico", quantidade = 10 },
            }
        },

        Colete = {
            name = 'Colete',
            spawName = 'armour',
            spawQtd = 1,
            img = 'https://cdn.discordapp.com/attachments/1240421138887213108/1254534269897019502/armour.png?ex=6679d796&is=66788616&hm=dec40f0cce55edcf593a98cee8f9b22d203e92d3158182fb5c395966488e4374&',
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

        
    },--fechamento do craftList
    

}