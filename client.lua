ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)

------------ Création du Menu  -----------

RMenu.Add('batop', 'main', RageUI.CreateMenu("Vendeur Illegal", "Fait toi plaisir !"))
RMenu.Add('batop', 'illégal', RageUI.CreateSubMenu(RMenu:Get('batop', 'main'), "~r~Vendeur Illégal", "Les bonnes affaires"))
RMenu.Add('batop', 'arme', RageUI.CreateSubMenu(RMenu:Get('batop', 'main'), "~r~Armes Illégal", "Les bonnes affaires"))

Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('batop', 'main'), true, true, true, function()

            RageUI.Button("Vendeur Illégal", "~r~Attention c'est 100% illégal !", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('batop', 'illégal'))

            RageUI.Button("Armes Illégal", "~r~Attention c'est 100% illégal !", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('batop', 'arme'))
        end, function()
        end)

        RageUI.IsVisible(RMenu:Get('batop', 'illégal'), true, true, true, function()

            RageUI.Button("Cagoule", "~r~C'est sur il ne va rien voir !", {RightLabel = "~g~1 250$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('batop:BuyCagoule')
                end
            end)

            RageUI.Button("Pilule de l'oublie", "~r~Cette pilule trop violente !", {RightLabel = "~g~10 000$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('batop:BuyGHB')
                end
            end)

            RageUI.Button("LockPick", "~r~Ce petit truc est génial pour crocheter les portes !", {RightLabel = "~g~750$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('batop:BuyLockPick')
                end
            end)

            RageUI.Button("Torche a plasma", "~r~Ce petit truc est génial pour crocheter les coffres forts !", {RightLabel = "~g~750$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('batop:BuyTorche')
                end
            end)

            RageUI.Button("Chargeur", "~r~Chargeur d'arme qui est génial !", {RightLabel = "~g~50$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('batop:Chargeur')
                end
            end)
        end, function()
        end)

        RageUI.IsVisible(RMenu:Get('batop', 'arme'), true, true, true, function()

            RageUI.Button("Couteau", "~r~Un couteau bien tranchant !", {RightLabel = "~g~1 500$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('batop:Couteau')
                end
            end)

            RageUI.Button("Machette", "~r~Une machette bien aiguisée !", {RightLabel = "~g~2 000$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('batop:Machette')
                end
            end)

            RageUI.Button("Batte", "~r~Une batte de baseball bien dur !", {RightLabel = "~g~1 000$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('batop:Batte')
                end
            end)

            RageUI.Button("Poing Américain", "~r~Surprend ton adversaire et couche le !", {RightLabel = "~g~1 250$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('batop:Poing')
                end
            end)

            RageUI.Button("Pétoire", "~r~Tir des petites balles pour des petits dégats !", {RightLabel = "~g~10 000$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('batop:Petoire')
                end
            end)

            RageUI.Button("Pistolet", "~r~Tir des balles assez puissante pour tuer !", {RightLabel = "~g~45 000$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('batop:Pistolet')
                end
            end)
        end, function()
        end)

    
            Citizen.Wait(0)
        end
    end)



    ---------------------------------------- Position du Menu --------------------------------------------

    local position = {
        {x = 781.70 , y = 1274.51, z = 361.28, }
    }    
    
    
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
    
            for k in pairs(position) do
    
                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
    
                if dist <= 1.1 then

                   RageUI.Text({
                        message = "Appuyez sur [~b~E~w~] pour parler au ~r~Vendeur",
                        time_display = 1
                    })
                    if IsControlJustPressed(1,51) then
                        RageUI.Visible(RMenu:Get('batop', 'main'), not RageUI.Visible(RMenu:Get('batop', 'main')))
                    end
                end
            end
        end
    end)

    ------------------------------------- PEDS ------------------------------------------------------

    Citizen.CreateThread(function()
        local hash = GetHashKey("g_m_m_chicold_01")
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
        end
        ped = CreatePed("PED_TYPE_CIVMALE", "g_m_m_chicold_01", 780.63, 1274.71, 360.33, 268.66, false, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        SetEntityInvincible(ped, true)
        FreezeEntityPosition(ped, true)
      
      
      end)